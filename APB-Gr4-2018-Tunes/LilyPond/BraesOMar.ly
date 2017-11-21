\version "2.19"

\include "bagpipe.ly" 
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/score_settings.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/gitDefinitions.ily"

filename = "~/BraesOMar.ly"
tunesetVersion = "Version 2"
source = ""
% source = "Essential Tunes Book 2" 


\header { 
          title = "The Braes O' Mar"
          composer = "Traditional"
          arranger = "APB"
          meter = "Strathspey" 
          tagline = \markup { \filename  " " \source " "  git Ver: \gitCommitish  Commit: \gitDateTime
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



cadf  = { \pgrace { \stemspace #'(0 . 0.5) g32[ f8] } }

% 
% \paper {
% 	#(set-paper-size "letter" 'portrait)
% }

BraesOMar = 
{
  \time 4/4
  \bar ".|:"
  \override Score.SpacingSpanner.spacing-increment = #0  %this is to get the first line on one line.
  \repeat volta 2 {                   
                   \set Timing.measurePosition = #(ly:make-moment -1 16 )  b16 |
                   \grg G8. [ \grd a16] \gre a8. [ b16 ]  \thrwd d8. [ e16 ] \dblf f8. [ e16 ] |
                   \grg d16 [ \hslurb b8.]  \dblb b8. [ a16 ]  \grg d16 [ b8.] \dblb b8. [ a16 ] |
                   \grg G8. [ \grd a16] \gre a8. [ b16 ]  \thrwd d8. [ e16 ] \dblf f8. [ e16 ] |
                   \hdblg g8 [ e8 ] A16 [ g16 f8 ] \dble e4  
                  }
    \alternative {
          {
           \set Timing.measurePosition = #(ly:make-moment 4 4)
           \set Timing.measurePosition = #(ly:make-moment 7 8)        
           \thrwd d8 |
          }
          {
            \set Timing.measurePosition = #(ly:make-moment 4 4)
            \set Timing.measurePosition = #(ly:make-moment 3 4) 
            \thrwd d4 |
            \break
          }
        }            
 \repeat volta 2 {                   
                   \grg c16 [ e8. ] \dble e8. [ a16 ]  \dblc c16 [ \gre a8. ] \dble e8. [ c16 ] |
                   \grg d16 [ f8. ] \dblf f8. [ G16 ]  \thrwd d8. [ G16 ]   \grg f16 [ e16 d8 ] |
                   \grg c16 [ e8. ] \dble e8. [ a16 ]  \dblc c16 [ \gre a8. ] \dble e8. [ c16 ] |
                   \thrwd d8. [ f16 ] \grg f16 [ e16 c8 ] \dblb b4 \grG a4 |
                   \break
                 } 

}


BraesOMarTwo = 
{
  \time 4/4
  \bar ".|:"
  \override Score.SpacingSpanner.spacing-increment = #0  %this is to get the first line on one line.
  \repeat volta 2 {                   
                   %\set Timing.measurePosition = #(ly:make-moment -1 16 )  b16 |
                   \grg G8. [ \grd a16] \gre a8. [ b16 ]  \thrwd d8. [ e16 ] \dblf f8. [ e16 ] |
                   \grg d8 [ b16 \grG b16 ]  \dblb b8. [ a16 ]  \grg d16 [ b8.] \dblb b8. [ a16 ] |
                   \grg G8. [ \grd a16] \gre a8. [ b16 ]  \thrwd d8. [ e16 ] \dblf f8. [ e16 ] |
                   \hdblg g8 [ e8 ] A16 [ g16 f8 ] \dble e4 \thrwd d4
                  }            
 \repeat volta 2 {                   
                   \grg c16 [ e8. ] \dble e8. [ a16 ]  \dblc c16 [ \gre a8. ] \dble e8. [ c16 ] |
                   \grip f4 \dblf f8. [ b16 ]  \thrwd d8. [ b16 ]   \dblf f8. [ d16 ] |
                   \grg c16 [ e8. ] \gra e8. [ a16 ]  \dblc c16 [ \gre a8. ] \dble e8. [ c16 ] |
                   \grip f4 \dble e8. [ c16 ] \dblb b4 \grG a4 |
                   \break
                 } 

}





% This just outputs both a portrait and a landscape pdf file.  
% By naming the \bookOutputName the same as the file name, you 
% get the engraving in the Frescobaldi window on the right. 

\book {
  \bookOutputName "BraesOMar"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \defaultTimeSignature
          \BraesOMar
        }      	
    >>
    \layout { 
                \ScoreLayout 
               #(layout-set-staff-size 17) 
    
            }
    \header{
      %piece = "Echo Lake "
      %opus = "Donald Macleod"
    }
  }
    \score {
    \new Staff <<
        \new Voice {
          \global
          \defaultTimeSignature
          \BraesOMarTwo
        }      	
    >>
    \layout { 
                \ScoreLayout 
               #(layout-set-staff-size 17) 
    
            }
    \header{
      piece = "The Braes O' Mar"
      opus = "SG1"
    }
  }
  \paper {
    #(set-paper-size "letter" 'portrait)
  }
}

\book {
  \bookOutputName "BraesOMar-Landscape"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \defaultTimeSignature
          \BraesOMar
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
   \score {
    \new Staff <<
        \new Voice {
          \global
          \defaultTimeSignature
          \BraesOMarTwo
        }      	
    >>
    \layout { 
                \ScoreLayout 
               #(layout-set-staff-size 17) 
    
            }
    \header{
      piece = "The Braes O' Mar"
      opus = "SG1"
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
				\BraesOMar
			}
		>>		
	\midi { \midiSettings }	
}
