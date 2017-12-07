\version "2.19"

\include "bagpipe.ly" 
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/score_settings.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/gitDefinitions.ily"

filename = "~/Craig-a-Bodich.ly"
tunesetVersion = "Version 1b"
source = "D MacLeod bk 4" 
% source = "http://www.ceolsean.net/content/B2B/Book08/Book08%204.pdf"
% source = "http://www.ceolsean.net/content/Cowal/Book01/Book01%209.pdf"


\header { 
          title = "Craig-a-Bodich"
          composer = "PM Donald MacLeod"
          arranger = ""
          meter = "Strathspey" 
          tagline = \markup { \filename " " \source " " git Ver: \gitCommitish  Commit: \gitDateTime
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
Craig-a-Bodich = 
{
  \time 4/4
  \bar ".|:"
  \repeat volta 2 {                   
                   \grg a4 \taor a8. [ \grd b16 ] \grg G8. [ a16 ] \grg b16 e8. ] |
                   \grg a4 \taor a8. [ \grd b16 ]  \dble e8. [ d16 ]  \grg e16 [ g8. ] |
                   \tdble e8. [ d16 ] \dblb b8. [ a16] \grg G8. [ a16 ] \grg b16 [ d8. ] |
                   g16 [ \grA e8. ] \gra e16 [ g8. ] \grA b16 [ d8. ] \dble e4 | \bar ":|.-.|"
                   \break
                 }
                 {                   
                   \gra e8. [ f16 ] \hdblg g8. [ e16 ] A8. [ g16 ] \grA e16 [ g8. ] |
                   \thrwd d8. [ e16 ] \dbld d8. [ b16 ] \grg G8. [ a16 ] \grg b16 [ d8. ] |
                   \grA e8. [ f16 ] \hdblg g8. [ e16 ] A8. [ g16 ] \grA e16 [ A8. ] |
                   g16 [ \grA e8. ] \gra e16 [ g8. ] \grA b16 [ d8. ] \dble e4 |                  
                   \break
                   \gra e8. [ f16 ] \hdblg g8. [ e16 ] A8. [ g16 ] \grA e16 [ g8. ] |
                   \tdble e8. [ d16 ] \dblb b8. [ a16] \grg G8. [ a16 ] \grg b16 [ e8. ] |
                   \grg a4 \taor a8. [ \grd b16 ] \grg G8. [ a16 ] \grg b16 d8. ] |
                   g16 [ \grA e8. ] \gra e16 [ g8. ] \grA b16 [ d8. ] \dble e4 | \bar "|."
                   \break                   
                 }
}


% This just outputs both a portrait and a landscape pdf file.  
% By naming the \bookOutputName the same as the file name, you 
% get the engraving in the Frescobaldi window on the right. 

\book {
  \bookOutputName "Craig-a-Bodich"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \defaultTimeSignature
          \Craig-a-Bodich 
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
  \bookOutputName "Craig-a-Bodich-Landscape"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \defaultTimeSignature
          \Craig-a-Bodich
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
				\Craig-a-Bodich
			}
		>>		
	\midi { \midiSettings }	
}
