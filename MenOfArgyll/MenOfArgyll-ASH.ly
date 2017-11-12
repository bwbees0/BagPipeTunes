\version "2.19"

\include "bagpipe.ly" 
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/score_settings.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/gitDefinitions.ily"

filename = "~/MenOfArgyll-ASH.ly"
tunesetVersion = "Version 1c"
source = ""  %Argyll & Sutherland Highlanders

%  Sources used are:  	Pipe Teacher's Asst, Vol 3 
%			Argyll and Sutherland Highlanders pg 47
% We note some differences between the settings.  I should decide 
% how I want to play the tune and adjust the score accordingly. 
%
% A&SH is missing the pointing in the 1st bars of the 1st phrase,
% but the pointing is present in the rest of the parts. This is 
% likely a typo.... 
% Also note that the \thrwd after the \taor is missing in A&SH 
% and a \dblA is added in bar 2. 
% Etc.


\header { 
          title = "Men Of Argyll"
          composer = "J. McLellan"
          arranger = ""
          meter = "March" 
          tagline = \markup { \filename  " " \source " "  git Version: \gitCommitish  Committed: \gitDateTime
          Engraved:
          \simple #(strftime "%d - %b - %Y - %H%M  " (localtime (current-time)))
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

MenOfArgyll = 
{
  \time 2/4
  \bar ".|:"
  \repeat volta 2 {                   
                   \set Timing.measurePosition = #(ly:make-moment -1 8 ) \grg f16. [ e32] |
                   \thrwd d8 [ \grg b8 ]  \taor b8 [ \grg d16. e32] |
                   \grg f8 [ \dblA A8 ] \hdblf f8 [ \grg e16. d32] |
                   \dblc c8 [ \gre a8 ]  \wbirl a8. [ b16 ] |
                   \grg c32 [ \grd a16. \grg c16. d32 ]  \dble e8 [ \grg f16. e32] |
                   \break
                   \thrwd d8 [ \grg c16. d32] \dblb b8 [ \grg d16. e32 ] |
                   \dblf f8 [ A8 ] \hdblf f8 [ \grg d16. e32] |
                   \grg f16. [ e32 \grg f32 A16. ]  \hdblc c8. [ \gre a16 ] |
                   \set Timing.measurePosition = #(ly:make-moment 1 8 ) \grg b4 \taor b8 | \bar ":|.-b"
                   \break
                 }
 \repeat volta 2 { 
                   \set Timing.measurePosition = #(ly:make-moment -1 8 ) \hdblg g8 |
                   \dblA A8 [  d8 ]  \dblf f8 [ e16. \grg d32 ] |
                   \grg f8 [ \dblA A8 ] \hdblf f8 [ \grg c16. d32] |
                   \dble e8 [ \birl a8 ]  \dblc c8. [ d16 ] |
                   % fix timing so the volta at the end of the line works
                   \set Timing.measurePosition = #(ly:make-moment 0 8 ) \dble e16. [ c32 \grg a16. \grd c32 ] 
                   \break % place the pick up on the next line just like the 2nd repeat
                 }
    \alternative {
                   { 
                     % fix timing so the volta at the end of the above line works
                     \set Timing.measurePosition = #(ly:make-moment 6 8 ) \dble e8 [ \grg f16. g32 ] |                      
                     \dblA A8 [  d8 ] \dblf f8 [ e16. d32 ] |
                     \grg f8 [ \dblA A8 ] \hdblf f8 [ \grg d16. e32 ] |
                     \dblf f16. [ e32 \grg f32 A16. ]  \hdblc c8. [ \gre a16 ] |
                     \set Timing.measurePosition = #(ly:make-moment 1 8 ) \grg b4 \taor b8 |
                     \break
                   }
                   {
                    \set Timing.measurePosition = #(ly:make-moment -2 8 ) \dble e8 [ \grg f16. e32] |
                    \thrwd d8 [ \grg c16. d32] \dblb b8 [ \thrwd d16. e32 ] |
                    \dblf f8 [ A8 ] \hdblf f8 [ \grg d16. e32] |
                    \dblf f16. [ e32 \grg f32 A16. ]  \hdblc c8. [ \gre a16 ] |
                    \set Timing.measurePosition = #(ly:make-moment 1 8 ) \grg b4 \taor b8 |
                    \break
                   }
                }
\repeat volta 2 { 
                  \set Timing.measurePosition = #(ly:make-moment -1 8 )  f8 |
                  \grg b8. [ \grd c16 ] \dblb b8] \grd c32 e16. ] |
                  \dblf f16. [ e32 \grg f32 A16. ] \hdblf f8 [ e16. c32 ] |
                  \grg a8. [ \grd b16 ]  \dbla a8 [ \grg a16. b32 ] |
                  \grg c32 [ \grd a16. \grg c32 e16. ] \grg f16. [ e32 \grg c32 \grd a16. ]|
                  \break
                  \grg b8. [ \grd c16 ] \dblb b8] \grd c32 e16. ] |
                  \dblf f16. [ e32 \grg f32 A16. ] c32 [ e16. \grg a16. \grd c32] |
                  \dblf f16. [ e32 \grg f32 A16. ]  \hdblc c8. [ \gre a16 ] |
                  \set Timing.measurePosition = #(ly:make-moment 1 8 ) \grg b4 \taor b8 |
                  \break
                }
\repeat volta 2 { 
                  \set Timing.measurePosition = #(ly:make-moment -1 8 ) \grg c32 [ e16. ] |
                  \dblf f8. [ \slurb b16 ] \dblf f8. [ e16] |
                  \dblf f16. [ e32 \grg f32 A16. ] \hdblf f8 [ e32 c16. ] |
                  \dble e8 [ \birl a8 ] \dble e8. [ f16 ] |
                  \grg e16. [ c32 \grg b32 \grd c16. ] \grg a16. [ b32 \grg c32 e16. ] |
                  \break                                   
                }
  \alternative  {
                  {
                    \dblf f8. [ \slurb b16 ] \dblf f8. [ e16] |
                    \dblf f16. [ e32 \grg f32 A16. ] c32 [ e16. \grg a16. \grd c32] |
                    \dblf f16. [ e32 \grg f32 A16. ]  \hdblc c8. [ \gre a16 ] |
                    \set Timing.measurePosition = #(ly:make-moment 1 8 ) \grg b4 \taor b8 |
                    \break                   
                  }
                  {
                    \grg c32 [ f16. \dble e16. c32 ] \slurb b8 [ \grd c32 e16. ] |
                    \dblf f16. [ e32 \grg f32 A16. ] c32 [ e16. \grg a16. \grd c32] |
                    \dblf f16. [ e32 \grg f32 A16. ]  \hdblc c8. [ \gre a16 ] |
                    \set Timing.measurePosition = #(ly:make-moment 1 8 ) \grg b4 \taor b8 |
                    \break   
                  }
                }
}






% This just outputs both a portrait and a landscape pdf file.  
% By naming the \bookOutputName the same as the file name, you 
% get the engraving in the Frescobaldi window on the right. 

\book {
  \bookOutputName "MenOfArgyll-ASH"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \MenOfArgyll   
        }      	
    >>
    \layout { \ScoreLayout }
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
  \bookOutputName "MenOfArgyll-ASH_Landscape"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \MenOfArgyll
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
     page-breaking = #ly:one-page-breaking
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
				\MenOfArgyll
			}
		>>		
	\midi { \midiSettings }	
}
