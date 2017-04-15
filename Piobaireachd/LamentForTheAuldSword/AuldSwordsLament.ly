\version "2.18"


\include "bagpipe.ly" 
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/score_settings.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/Piobaireachd/LamentForTheAuldSword/Auld-Sword-Lament-Voices.ly"

filename = "~/AuldSwordsLament.ly"
tunesetVersion = "Version 1"
source = "Kilberry Book of Ceol Mohr # 69"


\header { 
          title = "Lament for the old Sword"
          subtitle = ""
          composer = "Traditional"
          arranger = ""
          meter = "" 
          tagline = \markup { \filename  "  " \source "  "
          Engraved at
          \simple #(strftime "%d - %b - %Y - %H%M  " (localtime (current-time)))
         % with \with-url #"http://lilypond.org/"
         % \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
        }    
}




#(set-global-staff-size 14)

% 
% \paper {
% 	#(set-paper-size "letter" 'portrait)
% }

\book {
        \bookOutputName "LamentForTheOldSword" 
        \header { 
          title = "Lament for the old Sword"
          subtitle = ""
          composer = "Traditional"
          arranger = ""
          meter = "" 
          tagline = \markup { \filename  "  " \source "  "
          Engraved at
          \simple #(strftime "%d - %b - %Y - %H%M  " (localtime (current-time)))
         % with \with-url #"http://lilypond.org/"
         % \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
        }    
     }
}

  \score {
       \new Staff <<
        \new Voice = "Urlar" {
          \global
          \Urlar
         }
        \new Lyrics {
          \lyricsto "Urlar" { \urlarLyrics }
        }
       >>
 \layout { \ScoreLayout } 
 \header{
         piece = "I. Urlar "
         %opus = "Donald Macleod"
        }
  }
  \score {
       \new Staff <<
        \new Voice = "varI" {
          \global
          \varI
        } 
  \new Lyrics {
          \lyricsto "varI" { \varLyrics }
          }
       >>
 \layout { \ScoreLayout } 
 \header{
         piece = "II. Variation 1"
         %opus = "Donald Macleod"
        }
  }
\score {
       \new Staff <<
        \new Voice = "Doubling" {
          \global
          \Doubling
        } 
 \new Lyrics {
          \lyricsto "Doubling" { \doublingLyrics }
          }
       >>
 \layout { \ScoreLayout } 
 \header{
         piece = "III. Doubling"
         %opus = "Donald Macleod"
        }
  }
\pageBreak
  \score {
       \new Staff <<
        \new Voice = "Taoludh" {
          \global
          \Taoludh
        }
  \new Lyrics {
          \lyricsto "Taoludh" { \taoludhLyrics }
        }
       >>
 \layout { \ScoreLayout } 
 \header{
         piece = "IV. Tauludh"
         %opus = "Donald Macleod"
        }
  }
 \score {
       \new Staff <<
        \new Voice = "Taoludh Doubling" {
          \global
          \TaoludhDoubling
        }
  \new Lyrics {
          \lyricsto "Taoludh Doubling" { \taoludhDoublingLyrics }
        }
       >>
 \layout { \ScoreLayout } 
 \header{
         piece = "V. Tauludh Doubling"
         %opus = "Donald Macleod"
        }
  }
  %\pageBreak
  \score {
       \new Staff <<
        \new Voice = "Criunnludh" {
          \global
          \Criunnludh_Kilberry
        } 
  \new Lyrics  \with {  \override LyricText.self-alignment-X = #1  }
        
          \lyricsto "Criunnludh" { \criunnludhLyrics }
        
        >>
 \layout { \ScoreLayout  #(layout-set-staff-size 12) }
 \header{
         piece = "VI. Criunnludh"
         %opus = "Donald Macleod"
        }
  }
    \score {
       \new Staff <<
        \new Voice = "Criunnludh Doubling" {
          \global
          \CriunnludhDoubling
        } 
  \new Lyrics { 
          \lyricsto "Criunnludh Doubling" { \criunnludhDoublingLyrics }
        }
       >>
 \layout { \ScoreLayout  %{#(layout-set-staff-size 8)%} }
 \header{
         piece = "VII. Criunnludh Doubling"
         %opus = "Donald Macleod"
        }
  }
  \paper {
    #(set-paper-size "letter" 'landscape)  
    %system-separator-markup = \slashSeparator 
  }


% This just outputs both a portrait and a landscape pdf file.  
% By naming the \bookOutputName the same as the file name, you 
% get the engraving in the Frescobaldi window on the right. 

\book {
  \bookOutputName "LamentForTheOldSword-short"   
  \score {
       \new Staff <<
        \new Voice {
          \global
          \Urlar
        } 
       >>
 \layout { \ScoreLayout } 
 \header{
         piece = "I. Urlar "
         %opus = "Donald Macleod"
        }
  }
  \score {
       \new Staff <<
        \new Voice {
          \global
          \varI
        } 
       >>
 \layout { \ScoreLayout } 
 \header{
         piece = "II. Variation 1"
         %opus = "Donald Macleod"
        }
  }
\score {
       \new Staff <<
        \new Voice {
          \global
          \Doubling
        } 
       >>
 \layout { \ScoreLayout } 
 \header{
         piece = "III. Doubling"
         %opus = "Donald Macleod"
        }
  }
%\pageBreak
  \score {
       \new Staff <<
        \new Voice {
          \global
          \Taoludh
        } 
       >>
 \layout { \ScoreLayout } 
 \header{
         piece = "IV. Taoludh"
         %opus = "Donald Macleod"
        }
  }
  \score {
       \new Staff <<
        \new Voice {
          \global
          \Criunnludh_Kilberry
        } 
       >>
 \layout { \ScoreLayout  #(layout-set-staff-size 8) }
 \header{
         piece = "V. Criunnludh"
         %opus = "Donald Macleod"
        }
  }
  \paper {
    #(set-paper-size "letter" 'portrait) 
    %system-separator-markup = \slashSeparator 
  }
}


\book {
  \bookOutputName "LamentForTheOldSword_Landscape"   
  \header {
            copyright = "LamentForTheOldSword_Landscape.pdf" 
          }
 \score {
       \new Staff <<
        \new Voice = "Urlar" {
          \global
          \Urlar
        } 
 \new Lyrics { 
          \lyricsto "Urlar" { \urlarLyrics }
        }
       >>
 \layout { \ScoreLayout } 
 \header{
         piece = "I. Urlar "         
         %opus = "Donald Macleod"
        }
  }
  \score {
       \new Staff <<
        \new Voice = "varI" {
          \global
          \varI
        } 
\new Lyrics { 
          \lyricsto "varI" { \varLyrics }
        }
       >>
 \layout { \ScoreLayout } 
 \header{
         piece = "II. Variation 1"
         %opus = "Donald Macleod"
        }
  }
\score {
       \new Staff <<
        \new Voice = "Doubling" {
          \global
          \Doubling
        }
\new Lyrics { 
          \lyricsto "Doubling" { \doublingLyrics }
        }        
       >>
 \layout { \ScoreLayout } 
 \header{
         piece = "III. Doubling"
         %opus = "Donald Macleod"
        }
  }
\pageBreak
  \score {
       \new Staff <<
        \new Voice = "Taoludh" {
          \global
          \Taoludh
        } 
\new Lyrics { 
          \lyricsto "Taoludh" { \taoludhLyrics }
        } 
       >>
 \layout { \ScoreLayout } 
 \header{
         piece = "IV. Taoludh"
         %opus = "Donald Macleod"
        }
  }
  \score {
       \new Staff <<
        \new Voice = "Criunnludh" {
          \global
          \Criunnludh_Kilberry
        } 
\new Lyrics \with {  \override LyricText.self-alignment-X = #1  }  
          \lyricsto "Criunnludh" { \criunnludhLyrics }        
       >>
 \layout { \ScoreLayout #(layout-set-staff-size 12) }
 \header{
         piece = "V. Criunnludh"
         %opus = "Donald Macleod"
        }
  }
  \paper {
    #(set-paper-size "letter" 'landscape)
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
				\Urlar
				\varI
				\Doubling
				\Taoludh
				\Criunnludh_Kilberry
				\Urlar

			}
		>>		
	\midi { \midiSettings }	
}
