\version "2.19.80"

\include "bagpipe.ly" 
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/score_settings.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/gitDefinitions.ily"

\include "/home/ben/workspace/GitHub_BagPipeTunes/APB-Gr4-2018-Tunes/LilyPond/Grade_4_Medley_Set_2017_Voices.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/APB-Gr4-2018-Tunes/LilyPond/2017_GR4_MSR_Voices.ly"


filename = "~/2018-StrathspeyReels.ly"
tunesetVersion = "Version 1"
source = ""  %Argyll & Sutherland Highlanders

 

\header { 
          title = "APB 2018 Grade 4 Strathspey Reels"
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
  \bookOutputName "APB-2018-Gr4-Strathspey-Reels"   
  \score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global				
				\MollyConnell
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Molly Connell"}
          opus = "James Wark"
        }
}

\score {
	\new StaffGroup <<
		\new Staff = "GHB" 
		         \new Voice {
				\global							
				\HighRoadLinton				
			}
	        \new Staff = "GHB" <<	       	
			\new Voice {
				\global				
				\HighRoadLinton_Harmony				
			}
		>>	
		\new Staff = "GHB" <<	       	
			\new Voice {
				\global				
				\HighRoadLinton_Thirds			
			}
		>>
	>>
        \layout { \ScoreLayout }
                \header{
                  title = ""
                  %subtitle = "Atholl Highlanders"
                  piece = \markup {\fontsize #3 "High Road to Linton" }
                  opus = "Traditional, Harmonies by Ian MacKenzie"
                 
        }
}


  \score {
	\new StaffGroup <<
		\new Staff = "GHB" <<
			\new Voice {
				\global				
				\SleepyMaggie-Pointed
			}
		>>
	        \new Staff = "GHB" <<
   	                \new Voice {
				\global				
				\SleepyMaggie-Pointed_Harmony		
			}
		>>
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Sleepy Maggie"}
          opus = "J. Slattery, Arr APB, Harmonies by Ian MacKenzie"
        }
}



  \paper {
    #(set-paper-size "letter" 'portrait)
        %page-breaking = #ly:one-page-breaking 
        page-breaking = #ly:minimal-breaking
  }
}

