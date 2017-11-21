\version "2.19"

\include "bagpipe.ly" 
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/score_settings.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/gitDefinitions.ily"

filename = "~/FearChulCharn.ly"
tunesetVersion = "Version 1"
source = ""
% source = "Logan's Complete Tutor for the Highland Bagpipe" 


\header { 
          title = "Fear Chùl Charn - Culcairn's Strathspey"
          composer = "Traditional"
          arranger = "APB"
          meter = "Strathspey" 
          tagline = \markup { \filename  " " \source " "  git Ver: \gitCommitish  Committed: \gitDateTime
          Engraved:
          \simple #(strftime "%d-%b-%Y-%H%M  " (localtime (current-time)))
         % with \with-url #"http://lilypond.org/"
         % \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
        }    
}

#(define-bar-line "|.-b" "|." ".|" "|.") %This is for putting all parts in one score!
#(define-bar-line ":|.-b" ":|." ".|:" ":|.") 
#(define-bar-line ":|.-.|" ":|." ".|" "|." )    
#(define-bar-line "|.-.|:" "|." ".|:" "" ) 
% 
% \paper {
% 	#(set-paper-size "letter" 'portrait)
% }
FearChùlCharn = 
{
  \time 4/4
  \bar ".|:"
  \override Score.SpacingSpanner.spacing-increment = #0  %this is to get the first line on one line.
  \repeat volta 2 {                   
                   %\set Timing.measurePosition = #(ly:make-moment -1 8 )  g8 |
                   \grg G16 [ \grd G8. ] \Gthrwd d8. [ b16]  \thrwd d8. [ e16]  \dbld d8. [ b16] |
                   \grg G8. [ \grd b16 ] \thrwd d8. [ b16 ] \dble e8. [ d16 ] \dblb b4 |
                   \grg G16 [ \grd G8. ] \Gthrwd d8. [ b16]  \thrwd d8. [ e16]  \dbld d8. [ b16] |
                   \grg e8. [ f16 ] \hdblg g8. [ e16 ] \dbld d8. [b16 ] \grg a4 | \bar ":|.-.|"
                   \break
                 }
                 {                   
                   \hdblg g8. [A16 ] \grf g8. [ e16 ] \thrwd d8. [ e16] \dbld d8. [ b16 ] |
                   \hdblg g8. [A16 ] \grf g8. [ e16 ] \thrwd d8. [ e16] \dblb b4 |
                   \hdblg g8. [A16 ] \grf g8. [ e16 ] \thrwd d8. [ e16] \dbld d8. [ b16 ] |
                   \grg e8. [ f16 ] \hdblg g8. [ e16 ] \dbld d8. [b16 ] \grg a4 |             
                   \break
                   \hdblg g8. [A16 ] \grf g8. [ e16 ] \thrwd d8. [ e16] \dbld d8. [ b16 ] |
                   \hdblg g8. [A16 ] \grf g8. [ e16 ] \thrwd d8. [ e16] \dblb b4 |
                   \hdblg g8. [ A16 ]     e8. [ g16 ] \thrwd d8. [ e16] \dbld d8. [ b16 ] |
                   \grg   e8. [ f16 ] \hdblg g8. [ e16 ] \dbld d8. [b16 ] \grg a4 |  \bar "|."           
                   \break
                 }
}



% This just outputs both a portrait and a landscape pdf file.  
% By naming the \bookOutputName the same as the file name, you 
% get the engraving in the Frescobaldi window on the right. 

\book {
  \bookOutputName "FearChulCharn"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \defaultTimeSignature
          \FearChùlCharn 
        }      	
    >>
    \layout {
             \ScoreLayout
             %#(layout-set-staff-size 20)  
            }
    \header{
      %piece = "Echo Lake "
      %opus = "Donald Macleod"
    }
  }
  \paper {
    #(set-paper-size "letter" 'portrait)
  }
}

\book {
  \bookOutputName "FearChulCharn-Landscape"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \defaultTimeSignature
          \FearChùlCharn
        }
      >>		
    \layout { 
              \ScoreLayout
              %#(layout-set-staff-size 13)  
            }
    \header{
      %piece = "Echo Lake "
      %opus = "Donald Macleod"
    }
  }
  \paper {
    #(set-paper-size "letter" 'landscape)
    % page-breaking = #ly:one-page-breaking
    %system-count = #10
  }
}


\markup{
	\fill-line{
		% using the 2 columns here is to get the text in the left most position  
		\column{
			\line { "" }
			\line { "" }
		}
		\column {
			\line {""}
		}
	}
}	


\score {  % for midi only
	\new Staff = "MidiStaff" <<
                  \unfoldRepeats
			\new Voice {
				\set midiInstrument = #"bagpipe"
				\global
				\FearChùlCharn
			}
		>>		
	\midi { \midiSettings }	
}
