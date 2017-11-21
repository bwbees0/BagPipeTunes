\version "2.19"

\include "bagpipe.ly" 
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/score_settings.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/gitDefinitions.ily"

filename = "~/QueenVictoriasJubileeMarch.ly"
tunesetVersion = "Version 2"
source = ""
% source = "sheet" 
% source = "http://www.ceolsean.net/content/B2B/Book08/Book08%204.pdf"
% source = "http://www.ceolsean.net/content/Cowal/Book01/Book01%209.pdf"


\header { 
          title = "Queen Victoria's Jubilee"
          composer = "Traditional"
          arranger = "Price + APB"
          meter = "March" 
          tagline = \markup { \filename  " " \source " "  git Ver: \gitCommitish  Commit: \gitDateTime
          Engraved:
          \simple #(strftime "%d-%b-%Y-%H%M" (localtime (current-time)))
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

QueenVictoriasJubilee = 
{
  \time 2/4
  \bar ".|:"
  \repeat volta 2 {                   
                   \set Timing.measurePosition = #(ly:make-moment -1 8 ) \grg f8 |
                   \grg a8 [ f8 ]  \dblf f16. [ e32 \grg f32 A16. ] |
                   \grf g8 [ b8]  \dble e8. [ d16] |
                   \dblc c8 [ e8 ]  \dblb b8. [ \grd c16 ] |
                   \dblb b8 [ \gre a8 ] \dblf f4 |
                   \break
                   \grg a8 [ f8 ]  \dblf f16. [ e32 \grg f32 A16. ] |
                   \grf g8 [ b8]  \dble e8. [ d16] |
                   \dblc c8 [ A8 ] \grg A16 [ g16 \grA f16 e16 ] |
                   \set Timing.measurePosition = #(ly:make-moment 1 8 ) \thrwd d4 \wslurd d8 | \bar ":|.-b"
                   \break
                 }
  \repeat volta 2 {                   
                   \set Timing.measurePosition = #(ly:make-moment -1 8 ) b8 |
                   \grg a8 [ f8]  \dblf f16. [ e32 d16. c32 ] |
                   \dblb b8 [ g8 ] \grf g16. [ f32 e16. d32] |
                   \dblc c8 [ A8 ]  \grg A16. [ g32 \grA f16. e32 ] |
                   \dbld d16. [ c32 d16. e32 ] \dblf f8 [ b8 ] |
                   \break
                   \grg a8 [ f8]  \dblf f16. [ e32 d16. c32 ] |
                   \dblb b8 [ g8 ] \grf g16. [ f32 e16. d32 ] |
                   \dblc c8 [ A8 ]  \grg A16. [ g32 \grA f16. e32 ] |
                   \set Timing.measurePosition = #(ly:make-moment 1 8 )  \dbld d16. [ c32 d16. e32 ] \thrwd d8 | \bar ":|.-b"
                   \break
                 }
} 




% This just outputs both a portrait and a landscape pdf file.  
% By naming the \bookOutputName the same as the file name, you 
% get the engraving in the Frescobaldi window on the right. 

\book {
  \bookOutputName "QueenVictoriasJubilee"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \QueenVictoriasJubilee  
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
  \bookOutputName "QueenVictoriasJubilee-Landscape"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \QueenVictoriasJubilee
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
				\QueenVictoriasJubilee
			}
		>>		
	\midi { \midiSettings }	
}
