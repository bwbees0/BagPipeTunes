\version "2.19.80"

\include "bagpipe.ly" 

\include "/home/ben/workspace/GitHub_BagPipeTunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/score_settings.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/gitDefinitions.ily"
\include "/home/ben/workspace/GitHub_BagPipeTunes/APB-Gr4-2018-Tunes/LilyPond/TuneUp-MSR-Voices.ly"

filename = "~/TuneUp_MSR.ly"
tunesetVersion = "Version 1"
source = "APB"


% **** formatting goodies below ****

#(define-bar-line "|.-b" "|." ".|" "|.") %This is for putting all parts in one score!
#(define-bar-line ":|.-b" ":|." ".|:" ":|.") 
#(define-bar-line ":|.-.|" ":|." ".|" "|." )    
#(define-bar-line "|.-.|:" "|." ".|:" "" ) 


#(allow-volta-hook "||")
#(allow-volta-hook "|")

voltaTwo = \markup  { \hspace #20 \text \italic \fontsize #+5 { "2" }  }
voltaOne = \markup  { \hspace #20 \text \italic \fontsize #+5 { "1" }  }


voltaSecond = \markup  {  \text \italic \fontsize #+5 { "2" }  }
voltaFirst =  \markup  {  \text \italic \fontsize #+5 { "1" }  }

voltaLineTwoOnly = \markup { \hspace #1 \text \italic \fontsize #+5 {2nd time} }
voltaJig =         \markup { \hspace #1 \text \italic \fontsize #+5 { "2.         jig time"} }   


% **** End formatting goodies. ****

% 
% \paper {
% 	#(set-paper-size "letter" 'portrait)
% }


\book{
    \bookOutputName "TuneUp-MSR-portrait"   
\header { 
          myTitle = "TuneUp MSR"
          title = \markup { \fromproperty #'header:myTitle \footnote \super \char #8224 \concat {
                                 \super \char #8224  \myTitle } }
	  %composer = "Traditional--header"
	  %arranger = "Arranger--header" 
	  %meter = "Slow Aire or Some Other Meter--header"
	  %instrument = "Great Highland Bagpipe"
        
          tagline = \markup { \filename  "  " \source "  " git Version: \gitCommitish  Committed: \gitDateTime
          
          %tagline = \markup { \filename
          % Engraved at
          %\simple #(strftime "%d - %b - %Y - %H%M  " (localtime (current-time)))
          % with \with-url #"http://lilypond.org/"
          % \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
        }    
}

\markup { \vspace #1 }  % Add some vertical space after the main title before the first score. 


  \score {
	\new StaffGroup <<
		\new Staff = "GHB" 
		         \new Voice {
				\global							
				\LibertonPipeBand			
			}
	        \new Staff = "GHB" <<	       	
			\new Voice {
				\global				
				\LibertonPipeBandHarmony				
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
                  title = ""
                  %subtitle = "Atholl Highlanders"
                  poet =  \markup {\fontsize #3  "Liberton Pipe Band"}
                  composer = "Maurice Forsyth and PM Meldrum, 93d Highlanders"
                  meter = "March"
        }
}
  
  \score {
    \new Staff <<
        \new Voice {
          \global
          \MollyConnell
        }      	
    >>
    \layout { \ScoreLayout }
    \header{
                  title = ""
                  %subtitle = "Atholl Highlanders"
                  poet = \markup {\fontsize #3 "Molly Connell" }
                  composer = "James Wark"
                  meter = "Strathspey"
                }
  }

 
 \score {
  <<
	\new StaffGroup 
	\new Staff = "GHB" 
		         \new Voice {
				\global							
				\HighRoadLinton				
			}
		\new PianoStaff <<
	        \new Staff = "GHB" 	       	
			\new Voice {
				\global				
				\HighRoadLinton_Harmony			
			}
	       \new Staff = "GHB"        	
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
                  poet =  \markup {\fontsize #3 "The High Road to Linton"}
                  composer = "Traditional, Harmonies by Ian MacKenzie"
                  meter = "Reel"
        }
}
   
\score {
	\new StaffGroup <<
		\new Staff = "GHB" 
		         \new Voice {
				\global							
				\SleepyMaggie-Pointed			
			}
	        \new Staff = "GHB" <<	       	
			\new Voice {
				\global				
				\SleepyMaggie-Pointed_Harmony				
			}
		>>		
	>>
        \layout { \ScoreLayout }
                \header{
                  title = ""
                  %subtitle = "Atholl Highlanders"
                  poet =  \markup {\fontsize #3  "Sleepy Maggie"}
                  composer = "J. Slattery, Harmonies by Ian MacKenzie"
                  meter = "Reel"
        }
}
 
 
  \paper {
    #(set-paper-size "letter" 'portrait)
    	 print-all-headers=##t
  }
}







\score {  % for midi only
	\new GrandStaff <<
		\new Staff = "MidiStaff" <<
                  \unfoldRepeats
			\new Voice {
				\set midiInstrument = #"bagpipe"
				\global
                                 \LibertonPipeBand
                                 \MollyConnell
                                 \HighRoadLinton
                                 \SleepyMaggie-Pointed
			}
		>>
	>>	
	\midi { \midiSettings }	
}


