\version "2.19.80"

\include "bagpipe.ly" 
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/score_settings.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/gitDefinitions.ily"

\include "/home/ben/workspace/GitHub_BagPipeTunes/APB-Gr4-2018-Tunes/LilyPond/Grade_4_Medley_Set_2018_Voices.ly"


filename = "~/ReelHarmonies.ly"
tunesetVersion = "Version 1"
source = ""  %Argyll & Sutherland Highlanders

 

\header { 
          title = "Tail Toddle and The Ale Is Dear"
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


% **** formatting goodies below ****

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

% **** end formatting goodies ****


#(set-global-staff-size 17)


\book {
  % \bookOutputSuffix 
  \bookOutputName "APB-2018-Gr4-Medley-Reel_Harmonies"   


\score {
	\new GrandStaff <<
		\new Staff = "GHB" 
			\new Voice {
				\global	
				\defaultTimeSignature
				\TailToddleExpanded
			}
	        \new Staff = "GHB" <<
	                \new Voice {
	                        \global
	                        \defaultTimeSignature
	                        \TailToddleHarmonies
	               }
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Tail Toddle"}
          meter = "Reel"
          opus = "Traditional"
        }
}

\score {
	\new GrandStaff <<
		\new Staff = "GHB" 
			\new Voice {
				\global	
				\defaultTimeSignature
				\AleIsDearRound
				%\AleIsDearQOH
			}
	      \new Staff = "GHB" <<
	                \new Voice {
	                        \global
	                        \defaultTimeSignature
	                        \AleIsDearHarmonies
	               }
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "The Ale is Dear -- Tha Leann Daor Aig Na Gillean"}
          meter = "Reel"
          %opus = "Arr PM Norman Gillies (Ullapool)"
          opus = "Traditional"
        }
}

  \paper {
    #(set-paper-size "letter" 'portrait)
        %page-breaking = #ly:one-page-breaking 
        page-breaking = #ly:minimal-breaking
  }
}



\book {
  \bookOutputName "APB-2018-Gr4-Medley-Reel_Harmonies-Landscape"   



\score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global	
				\defaultTimeSignature
				\TailToddleExpanded
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Tail Toddle"}
          meter = "Reel"
          opus = "Traditional"
        }
}

\score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global	
				\defaultTimeSignature
				\AleIsDearRound
				%\AleIsDearQOH
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "The Ale is Dear -- Tha Leann Daor Aig Na Gillean"}
          meter = "Reel"
          %opus = "Arr PM Norman Gillies (Ullapool)"
          opus = "Traditional"
        }
}

  \paper {
    #(set-paper-size "letter" 'landscape)
        %page-breaking = #ly:one-page-breaking 
        page-breaking = #ly:minimal-breaking
        %page-breaking = #ly:page-turn-breaking
        %page-breaking = #ly:optimal-breaking
  }
}




\score {  % for midi only
	\new Staff = "MidiStaff" <<
                  \unfoldRepeats
			\new Voice {
				\set midiInstrument = #"bagpipe"
				\global
				\TailToddleExpanded
				\AleIsDearRound
				
			}
		>>		
	\midi { \midiSettings }	
}

