\version "2.19.80"
 
\include "bagpipe.ly" 
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/score_settings.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/gitDefinitions.ily"

\include "/home/ben/workspace/GitHub_BagPipeTunes/APB-Gr4-2018-Tunes/LilyPond/Grade_4_Medley_Set_2018_Voices-21Mar.ly"


filename = "~/APB-Gr4-2018-Medley-RevisedReels.ly"
tunesetVersion = "Version 1c"
source = ""  %Argyll & Sutherland Highlanders

 

\header { 
          title = "APB 2018 Grade 4 Medley -- First Half"
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
  \bookOutputName "APB-2018-Gr4-Medley-RevisedReels-9-Apr"   
  \score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global				
				\QueenVictoriasJubilee
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Queen Victoria's Jubilee"}
          opus = "Traditional, Arr Price + APB"
        }
}

\score {
	\new StaffGroup <<
		\new Staff = "GHB" 
		         \new Voice {
				\global							
				\FleeTheGlen				
			}
	        \new Staff = "GHB" <<	       	
			\new Voice {
				\global				
				\FleeTheGlen_Harmony				
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
                  title = ""
                  %subtitle = "Atholl Highlanders"
                  piece = \markup {\fontsize #3 "Flee The Glen" }
                  opus = "Robert Mathieson, Harmonies by Ian MacKenzie, Arr APB"
                 
        }
}

\score {
  <<
	\new StaffGroup 
	\new Staff = "GHB" 
		         \new Voice {
				\global							
				\Haunting				
			}
		\new PianoStaff <<
	        \new Staff = "GHB" 	       	
			\new Voice {
				\global				
				\Haunting_Harmony_Two				
			}
	       \new Staff = "GHB"        	
			\new Voice {
				\global				
				\Haunting_Harmony_Three				
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
                  title = ""
                  %subtitle = "Atholl Highlanders"
                  piece =  \markup {\fontsize #3 "The Haunting"}
                  opus = "Neil Dickie, Harmonies by Aaron Cole"             
        }
}

\score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global	
				\defaultTimeSignature
				\MaidsOfTheBlackGlen
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Maids of the Black Glen"}
          meter = "Strathspey"
          opus = "Traditional"
        }
}

%{
\score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global	
				\defaultTimeSignature
				\AleIsDearSG
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "The Ale is Dear --SG vol1"}
          meter = "Reel"
          opus = "Traditional"
        }
}
%}

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



\book {
  \bookOutputName "APB-2018-Gr4-Medley-Landscape-RevisedReels-9-Apr"   
  \score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global				
				\QueenVictoriasJubilee
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Queen Victoria's Jubilee"}
          opus = "Traditional, Arr Price + APB"
        }
}

\score {
	\new StaffGroup <<
		\new Staff = "GHB" 
		         \new Voice {
				\global							
				\FleeTheGlen				
			}
	        \new Staff = "GHB" <<	       	
			\new Voice {
				\global				
				\FleeTheGlen_Harmony				
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
                  title = ""
                  %subtitle = "Atholl Highlanders"
                  piece = \markup {\fontsize #3 "Flee The Glen" }
                  opus = "Robert Mathieson, Harmonies by Ian MacKenzie, Arr APB"
                 
        }
}

\score {
  <<
	\new StaffGroup 
	\new Staff = "GHB" 
		         \new Voice {
				\global							
				\Haunting				
			}
		\new PianoStaff <<
	        \new Staff = "GHB" 	       	
			\new Voice {
				\global				
				\Haunting_Harmony_Two				
			}
	       \new Staff = "GHB"        	
			\new Voice {
				\global				
				\Haunting_Harmony_Three				
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
                  title = ""
                  %subtitle = "Atholl Highlanders"
                  piece =  \markup {\fontsize #3 "The Haunting"}
                  opus = "Neil Dickie, Harmonies by Aaron Cole"             
        }
}
\pageBreak

\score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global	
				\defaultTimeSignature
				\MaidsOfTheBlackGlen
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "Maids of the Black Glen"}
          meter = "Strathspey"
          opus = "Traditional"
        }
}



%{
\score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global	
				\defaultTimeSignature
				\AleIsDearSG
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
          piece = \markup {\fontsize #3 "The Ale is Dear --SG vol1"}
          meter = "Reel"
          opus = "Traditional"
        }
}
%}

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
				\QueenVictoriasJubilee
				\FleeTheGlen
				\Haunting
				\MaidsOfTheBlackGlen
				\HighRoadLinton
				\SleepyMaggie-Pointed
				%\AleIsDearSG
				%\TailToddleExpanded
			}
		>>		
	\midi { \midiSettings }	
}

