\version "2.19.80"

\include "bagpipe.ly" 
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/score_settings.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/gitDefinitions.ily"

%\include "/home/ben/workspace/GitHub_BagPipeTunes/APB-Gr4-2018-Tunes/LilyPond/MuirOfOrd.ly"
%\include "/home/ben/workspace/GitHub_BagPipeTunes/APB-Gr4-2018-Tunes/LilyPond/Craig-a-Bodich.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/APB-Gr4-2018-Tunes/LilyPond/2018_GR4_MSR_Voices.ly"

filename = "~/APB-2018-Gr4-MSR.ly"
tunesetVersion = "Version 1"
source = ""  %Argyll & Sutherland Highlanders



\header { 
          title = "APB 2018 Grade 4 MSR"
          composer = ""
          arranger = ""
          meter = "" 
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


#(allow-volta-hook "||")
#(allow-volta-hook "|")

voltaTwo = \markup  { \hspace #20 \text \italic \fontsize #+5 { "2" }  }
voltaOne = \markup  { \hspace #20 \text \italic \fontsize #+5 { "1" }  }

#(set-global-staff-size 17)




% This just outputs both a portrait and a landscape pdf file.  
% By naming the \bookOutputName the same as the file name, you 
% get the engraving in the Frescobaldi window on the right. 

\book {
  \bookOutputName "APB-2018-Gr4-MSR"   
  \score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global				
				\MuirOfOrd
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Muir of Ord"}
          opus = "G. S. McLennan Arr PM Graeme Smith APB"
        }
}
\pageBreak
\score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global	
				\defaultTimeSignature
				\Craig-a-Bodich				
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Craig-a-Bodich"}
          meter = "Strathspey"
          opus = "Donald MacLeod"
        }
}

\score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global	
				\defaultTimeSignature
				\Kalabakan				
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Kalabakan (Borneo)"}
          meter = "Reel"
          opus = "P/M A. MacDonald, Scots Guards"
        }
}
  \paper {
    #(set-paper-size "letter" 'portrait)
  }
}

\book {
  \bookOutputName "APB-2018-Gr4-MSR-Landscape"   
  \score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global				
				\MuirOfOrd
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Muir of Ord"}
          opus = "G. S. McLennan Arr PM Graeme Smith APB"
        }
}
\pageBreak
\score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global
				\defaultTimeSignature
				\Craig-a-Bodich				
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Craig-a-Bodich"}
          meter = "Strathspey"
          opus = "Donald MacLeod"
        }
}

\score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global	
				\defaultTimeSignature
				\Kalabakan				
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Kalabakan (Borneo)"}
          meter = "Reel"
          opus = "P/M A. MacDonald, Scots Guards"
        }
}
  \paper {
    #(set-paper-size "letter" 'landscape)
    % page-breaking = #ly:one-page-breaking
    %system-count = #10
  }
}




\book {
  \bookOutputName "APB-2018-Gr4-MSR-OneSheet"   
  \score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global				
				\MuirOfOrd
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Muir of Ord"}
          opus = "G. S. McLennan Arr PM Graeme Smith APB"
        }
}
\pageBreak
\score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global
				\defaultTimeSignature
				\Craig-a-Bodich				
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Craig-a-Bodich"}
          meter = "Strathspey"
          opus = "Donald MacLeod"
        }
}

\score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global	
				\defaultTimeSignature
				\Kalabakan				
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Kalabakan (Borneo)"}
          meter = "Reel"
          opus = "P/M A. MacDonald, Scots Guards"
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
				\MuirOfOrd
				\Craig-a-Bodich
				\Kalabakan
			}
		>>		
	\midi { \midiSettings }	
}
