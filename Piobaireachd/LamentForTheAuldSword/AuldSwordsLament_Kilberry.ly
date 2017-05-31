\version "2.18"


\include "bagpipe.ly" 
\include "/home/ben/workspace/BagpipeTunes_Working/TuneBook_ly/BWB_Bagpipe.ly"
\include "/home/ben/workspace/BagpipeTunes_Working/TuneBook_ly/score_settings.ly"

filename = "~/AuldSwordsLament_Kilberry.ly"
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

#(define-bar-line "|.-b" "|." ".|" "|.") %This is for putting all parts in one score!
%  #(define-bar-line ":|.-b" ":|." ".|:" ":|.") %This is for putting all parts in one score!
#(define-bar-line ":|.-.|" ":|." ".|" "|." )    
\defineBarLine "|.-.|:" #'("|." ".|:" "" ) %This rocks! This ends a repeated part and starts a non-repeated part.

% define a variable that places a little x where a note would go in the staff. 



% Cadence 'cad' is copied from bagpipe.ly and a fermata is added over the e to match the setting
cad_eye      = { \pgrace { \stemspace #'(0 . 0.5) g32[ e8\fermata d32] } } 

#(allow-volta-hook "||")
#(allow-volta-hook "|")


voltaTwice = \markup  { \hspace #20 \text \italic \fontsize #+5 { Play Twice }  }
voltaLineTwoOnly = \markup { \hspace #15 \text \italic \fontsize #+5 { Line 2 Only } }
voltaLineThreeOnly = \markup { \hspace #15 \text \italic \fontsize #+5 { Line 3 Only } }


hiharin = { \grg e4 \dbirl a4 } 


#(set-global-staff-size 14)

% 
% \paper {
% 	#(set-paper-size "letter" 'portrait)
% }


Urlar = {
  \time 4/4
  \repeat volta 2 { \bar ".|:"
                   \grg c16 [\grG a8. ]  \grip a4 \cad c4 \dre e4 |
                   A4 c16 [ \grip c8. ] \cad b8. [ c16 ] \pthrwd d4 |
                   \grg c16 [\grG a8. ]  \grip a4 \cad c4 \dre e4 |
                   \grA g4 b16 [ \grip b8. ] \hiharin | \bar ":|.-.|"  
                   \break
                  }
                   A4 \dre e4 \grA g8. [ e16 ] \pthrwd d4 |
                   \grg e4 c16 [ \grip c8. ]  \cad b8. [ c16 ] \pthrwd d4 |
                   A4 \dre e4 \grA g8. [ e16 ] \pthrwd d4 |
                   \grg e4 c16 [ \grip c8. ]  \cad b4 \grG a4 |
                   \break
                   A4 \dre e4 \grA g8. [ e16 ] \pthrwd d4 |
                   \grg e4 c16 [ \grip c8. ]  \cad b8. [ c16 ] \pthrwd d4 |
                   \grg c16 [\grG a8. ]  \grip a4 \cad c4 \dre e4 |
                   \grA g4 b16 [ \grip b8. ] \hiharin | \bar "|.-.|:"
                   \break    
      }

\addlyrics  {
                    ho din bain hiho dre |
                    I ho dro hio ho tra |
                    ho din bain hiho dre |
                    chi o tro hi harin |
                    \break
                    I edre chi e tra |
                    che ho dro  hihio ho tra |
                    I edre chi e tra | 
                    che ho dro hihio din |
                    \break 
                    I edre chi e tra |
                    che ho dro hihio ho tra |
                    ho din  bain hiho dre |
                    chi o tro hi harin |
                    \break
                    }

varI =
{
  \repeat volta 2 {
                    \grg c8. [ \gre a16 ] \grg a8. \gre a16 ] \grg b8. [ \gre a16 ] \grg e8. [ \gre a16 ] |
                    A8. [ a16 ] \grg c8. [ \gre a16 ] \grg b8. [ \gre a16 ] \grg d8. [ \gre a16 ] |
                    \grg c8. [ \gre a16 ] \grg a8. [ \gre a16 ] \grg b8. [ \gre a16 ] \grg e8. [ \gre a16 ] |
                    \grA g8. [ \grA a16 ]  \grg b8. [ \gre a16 ]  \grg a8. [ \gre a16 ] \grg a8. [ \gre a16 ] | \bar ":|.-.|"  
                    \break
                  }
                    A8. [ a16 ] \grg e8. [ \grg a16 ] \grA g8. [ \gre a16 ] \grg d8. [ \gre a16 ] |
                    \grg e8. [ \grg c16 ] \grg c8. [ \gre a16 ] \grg b8. [ \gre a16 ] \grg d8. [ \gre a16 ] |
                    A8. [ a16 ] \grg e8. [ \grg a16 ] \grA g8. [ \gre a16 ] \grg d8. [ \gre a16 ] |  
                    \grg e8. [ \grg a16 ]  \grg b8. [ \gre a16 ] \grg a8. [  \gre a16 ] \grg a8. [  \gre a16 ] |
                    \break 
                    A8. [ a16 ] \grg e8. [ \grg a16 ] \grA g8. [ \gre a16 ] \grg d8. [ \gre a16 ] |
                    \grg e8. [ \grg c16 ] \grg c8. [ \gre a16 ] \grg b8. [ \gre a16 ] \grg d8. [ \gre a16 ] |
                    \grg c8. [ \gre a16 ] \grg a8. [ \gre a16 ] \grg b8. [ \gre a16 ] \grg e8. [ \gre a16 ] |
                    \grA g8. [ \grA a16 ]  \grg b8. [ \gre a16 ]  \grg a8. [ \gre a16 ] \grg a8. [ \gre a16 ] | \bar "|.-.|:"
                    \break
}
Doubling = 
{
 \repeat volta 2 {
                   \grg c8. [ \gre c16 ] \grg a8. [ \gre a16 ]  \grg b8. [ \gre b16 ] \grg e8. [ \grg e16 ] |
                   \dblA A8. [ \grg A16 ] c8. [ \gre c16 ]  \grg b8. [ \gre b16 ] \grg d8. [ \gre d16 ] |
                   \grg c8. [ \gre c16 ] \grg a8. [ \gre a16 ]  \grg b8. [ \gre b16 ] \grg e8. [ \grg e16 ] |
                   \grA g8. [ \grA g16 ]  \grA b8. [ \gre b16 ] \grg a8. [ \gre a16]  \grg a8. [ \grg a16 ] |\bar ":|.-.|" 
                   \break
                 }
                   \dblA A8.[ \grg A16 ] e8. [ \grg e16 ]  \grA g8. [ \grA g16 ]  \grA d8. [ \gre d16 ] |
                   \grg e8. [ \grg e16 ] \grg c8. [ \gre c16 ]  \grg b8. [ \gre b16]  \grg d8. [ \gre d16 ] |
                   \dblA A8.[ \grg A16 ] e8. [ \grg e16 ]  \grA g8. [ \grA g16 ]  \grA d8. [ \gre d16 ] |
                   \grg e8. [ \grg e16 ] \grg b8. [ \gre b16 ] \grg a8. [ \gre a16]  \grg a8. [ \grg a16 ] |
                   \break
                   \dblA A8.[ \grg A16 ] e8. [ \grg e16 ]  \grA g8. [ \grA g16 ]  \grA d8. [ \gre d16 ] |
                   \grg e8. [ \grg e16 ] \grg c8. [ \gre c16 ]  \grg b8. [ \gre b16]  \grg d8. [ \gre d16 ] |
                   \grg c8. [ \gre c16 ] \grg a8. [ \gre a16 ]  \grg b8. [ \gre b16 ] \grg e8. [ \grg e16 ] |
                   \grA g8. [ \grA g16 ]  \grA b8. [ \gre b16 ] \grg a8. [ \gre a16]  \grg a8. [ \grg a16 ] |\bar "|.-.|:"
                   \break
}

Taoludh = 
{
  \repeat volta 2 {
                    \grg c8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg e8. [ \taor a16] |
                    A8. [ \taor a16 ] \grg c8. [ \taor a16]  \grg b8. [ \taor a16 ]  \grg d8. [ \btaor a16 ] |                    
                    \grg c8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg e8. [ \taor a16] |
                    g8. [ \taor a16 ] \grg b8. [ \taor a16 ]  \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] | \bar ":|.-.|" 
                    \break
                 }
                    A8. [ \taor a16 ]  \grg e8. [ \taor a16]  g8. [ \taor a16 ] \grg d8. [ \btaor a16 ] |
                    \grg e8. [ \taor a16 ] \grg c8. [ \taor a16 ]  \grg b8. [ \taor b16 ] \grg d8. [ \btaor a16 ] |
                    A8. [ \taor a16 ]  \grg e8. [ \taor a16] \grA g8. [ \taor a16 ] \grg d8. [ \btaor a16 ] |
                    \grg e8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg a8. [ \taor a16]  \grg a8. [ \taor a16 ] |
                    \break
                    A8. [ \taor a16 ]  \grg e8. [ \taor a16]  g8. [ \taor a16 ] \grg d8. [ \btaor a16 ] |
                    \grg e8. [ \taor a16 ] \grg c8. [ \taor a16 ]  \grg b8. [ \taor b16 ] \grg d8. [ \btaor a16 ] |
                    \grg c8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg e8. [ \taor a16] |
                    \grA g8. [ \taor a16 ] \grg b8. [ \taor a16 ]  \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] | \bar "|.-.|:"
                    \break
}




Criunnludh = 
{
   \repeat volta 2 {
                    \grg c8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg e8. [ \crun e16] |
                    A8. [ \crun e16 ] \grg c8. [ \crun e16]  \grg b8. [ \crun e16 ]  \grg d8. [ \dcrun e16 ] |                    
                    \grg c8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg e8. [ \crun e16] |
                    \grA g8. [ \crun e16 ] \grg b8. [ \crun e16 ]  \grg a8. [ \crun e16 ] \grg a8. [ \crun e16 ] | \bar ":|.-.|" 
                    \break
                 }
                    A8. [ \crun e16 ]  \grg e8. [ \crun e16]  \grA g8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg e8. [ \crun e16 ] \grg c8. [ \crun e16 ]  \grg b8. [ \crun b16 ] \grg d8. [ \crun e16 ] |
                    A8. [ \crun e16 ]  \grg e8. [ \crun e16]  \grA g8. [ \crun e16 ] \grg d8. [ \dcrun a16 ] |
                    \grg e8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg a8. [ \crun e16]  \grg a8. [ \crun e16 ] |
                    \break
                    A8. [ \crun e16 ]  \grg e8. [ \crun e16]  \grA g8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg e8. [ \crun e16 ] \grg c8. [ \crun e16 ]  \grg b8. [ \crun b16 ] \grg d8. [ \dcrun e16 ] |
                    \grg c8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg e8. [ \crun e16] |
                    \grA g8. [ \crun e16 ] \grg b8. [ \crun e16 ]  \grg a8. [ \crun e16 ] \grg a8. [ \crun e16 ] | \bar "|.-.|:"
                    \break
}

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

\score {
       \new Staff <<
        \new Voice {
          \global
          \Taoludh
        } 
       >>
 \layout { \ScoreLayout } 
 \header{
         piece = "IV. Tauludh"
         %opus = "Donald Macleod"
        }
  }
  %\pageBreak
\score {
       \new Staff <<
        \new Voice {
          \global
          \Criunnludh
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


% This just outputs both a portrait and a landscape pdf file.  
% By naming the \bookOutputName the same as the file name, you 
% get the engraving in the Frescobaldi window on the right. 

\book {
  \bookOutputName "LamentForTheOldSword"   
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
         piece = "IV. Tauludh"
         %opus = "Donald Macleod"
        }
  }
  \score {
       \new Staff <<
        \new Voice {
          \global
          \Criunnludh
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
\pageBreak
  \score {
       \new Staff <<
        \new Voice {
          \global
          \Taoludh
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
        \new Voice {
          \global
          \Criunnludh
        } 
       >>
 \layout { \ScoreLayout #(layout-set-staff-size 14) }
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

			}
		>>		
	\midi { \midiSettings }	
}
