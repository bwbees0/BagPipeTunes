\version "2.18"

\include "bagpipe.ly" 
\include "/home/ben/workspace/BagpipeTunes_Working/TuneBook_ly/BWB_Bagpipe.ly"
\include "/home/ben/workspace/BagpipeTunes_Working/TuneBook_ly/score_settings.ly"

filename = "~/CatherinesLament.ly"
tunesetVersion = "Version 1"
source = "PS Book 5, pg 133"


\header { 
          title = "Catherine's Lament"
          subtitle = "(Catherine's Salute)"
          composer = "From Angus MacArthur, Angus MacKay and John MacKay MSS"
          arranger = "PS Bk 5, pg 133"
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

hiharin = { \grg e4 \dbirl a4 } 
hiharinfine = { \grg e4 \dbirl a4^\markup { \bold \large \raise #2.0 "Fine"} }

% 
% \paper {
% 	#(set-paper-size "letter" 'portrait)
% }


urlar =
{
  \bar ".|" 
  \time 4/4
  \defaultTimeSignature
  \hcad G4^Urlar \grd a4 \grg d8. [ e16 ] f8\fermata [ a8\fermata ] |
  \cad b16 [ \grG b8. ] \grG b4 \cad b4 \grG a4 |
  \grg d8. [ e16]  f8\fermata [ a8\fermata ] \hcad d8 [ b8 ] d8\fermata [ G8\fermata ] |
  \hiharin \hiharin |
  \break
  \grg G8 [ \grd b8 ] \taor a4 \grg d8. [ e16 ] f8\fermata [ a8\fermata ] |
  \cad b8. [ \grG b16 ]  \grG b4 \cad b4 \grG a4 |
  \grg d8. [ e16]  f8\fermata [ a8\fermata ] \hcad d8 [ b8 ] d8\fermata [ G8\fermata ] |
  \hiharin \hiharin |
  \break
  \hcad G4 \grd a4 \grg d8 [ b8 ] d16 [ \grG a8. ] | 
  \cad b16 [ \grG b8. ] \grG b4 \cad b4 \grG a4 |
  \grg d8. [ b16 ]  d8. [b16]  \grg a8 [ \grd b8 ] \dre e8. [ b16 ] |
  \hiharin \hiharin |
  \break
  \hcad G4 \grd a4 \grg d8. [ e16 ] \thrwd d8 [ e8\fermata ] |
  \cad b16 [ \grG b8. ] \grG b4 \cad b4 \grG a4 |
  \dare f8. [ e16 ] \grg d8. [ b16 ]  \grg a8 [ \grd b8 ] \dare f8. [ b16 ] |
  \hiharin \hiharinfine | \bar "|.-.|:" 

  \break
}

varIMacArthur =
{
  \time 6/8 
  \numericTimeSignature
  \grg G8.^VarI [ \grd a16 \gre a8 ]  \grg f8. [ \grip a16 \gre a8 ] |
  \grg b8. [ \xNotesOn \once \hide Stem {\grace {a4}} \xNotesOff  a16 \gre a8 ]  \grg e8 [ \grd b8\fermata \grG a8 ]  |
  \grg f8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ]  \grg e8 [ \grd b8\fermata \grG a8 ] |
  \grg a8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ]  \grg a8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ] | \bar ":|.-.|"
  \break
  \grg G8. [ \grd a16 \gre a8 ]  \grg d8. [ \grG b16 \gre a8 ] | 
  \grg b8. [ \xNotesOn \once \hide Stem {\grace {a4}} \xNotesOff   a16 \gre a8 ] \grg e8 [ \grd b8\fermata \grG a8 ]  |
  \grg d8. [ \grG b16 \gre a8 ] \grg d8 [ \grd b8\fermata \grG a8 ] |
  \grg a8. [ \grd a16 \gre a8 ]   \grg a8. [ \grd a16 \gre a8 ] |
  \break 
  \grg G8. [ \grd a16 \gre a8 ] \grg e8 [ \grd b8\fermata \grG a8 ] |
  \grg d8. [ \grG b16 \gre a8 ] \grg e8 [ \grd b8\fermata \grG a8 ] |
  \grg f8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ]  \grg e8 [ \grd b8\fermata \grG a8 ] |
  \grg a8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ]  \grg a8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ]| \bar "|.-.|:" 
  \break
}

varI = 
{
 \time 2/4
 \repeat volta 2 { 
                  
                   \grg G8.^ \markup {\bold \large "Var I"} [ \gre a16 ] \grg f8. [ \grg a16 ] |
                   \grg b8. [ \gre a16 ] \grg b8. [ \gre a16 ] |
                   \grg f8. [ \grg a16 ] \grg b8. [ \gre a16 ] |
                   \grg a8. [ \gre a16 ] \grg a8. [ \gre a16 ] | \bar ":|.-.|"
                   %\override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible

                   \break
                  }
                   \grg G8. [ \gre a16 ] \grg d8. [ \grg a16 ] |
                   \grg b8. [ \gre a16 ] \grg b8. [ \gre a16 ] |
                   \grg d8. [ \grg a16 ] \grg b8. [ \gre a16 ] |
                   \grg a8. [ \gre a16 ] \grg a8. [ \gre a16 ] |
                   \break
                   \grg G8. [ \gre a16 ] \grg e8. [ \grg a16 ] |
                   \grg b8. [ \gre a16 ] \grg b8. [ \gre a16 ] |
                   \grg f8. [ \grg a16 ] \grg b8. [ \gre a16 ] |
                   \grg a8. [ \gre a16 ] \grg a8. [ \gre a16 ] | \bar "|.-.|:"
                   \break
}

varIdoubling = 
{
 \time 2/4
 \repeat volta 2 { 
                  \grg G8.^ \markup {\bold \large "Var I Doubling"} [ \gre a16 ] \grg f8. [ \grg f16 ] |
                  \grg b8. [ \gre b16 ] \grg b8. [ \gre b16 ] | 
                  \grg f8. [ \grg f16 ] \grg b8. [ \gre b16 ] |
                  \grg a8. [ \gre a16 ] \grg a8. [ \gre a16 ] | \bar ":|.-.|"
                  \break 
                 }
                  \grg G8. [ \gre a16 ] \grg d8. [ \gre d16 ] |
                  \grg b8. [ \gre b16 ] \grg b8. [ \gre b16 ] |
                  \grg d8. [ \grg d16 ] \grg b8. [ \gre b16 ] |
                  \grg a8. [ \gre a16 ] \grg a8. [ \gre a16 ] |
                  \break
                  \grg G8. [ \gre a16 ] \grg e8. [ \grg e16 ] |
                  \grg b8. [ \gre b16 ] \grg b8. [ \gre b16 ] |
                  \grg f8. [ \grg f16 ] \grg b8. [ \gre b16 ] |
                  \grg a8. [ \gre a16 ] \grg a8. [ \gre a16 ] | \bar "|.-.|:"
                  \break

}


DoublingMacArthur = 
{
  \time 6/8 
  \numericTimeSignature
  \grg G8.^Doubling [ \grd a16 \gre a8 ] \grg f8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ] |
  \grg b8. [ \xNotesOn \once \hide Stem {\grace {a4}} \xNotesOff  a16 \gre a8 ]  \grg b8. [ \xNotesOn \once \hide Stem {\grace {a4}} \xNotesOff  a16 \gre a8] |
  \grg f8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ]  \grg b8. [ \xNotesOn \once \hide Stem {\grace {a4}} \xNotesOff a16 \gre a8 ] |
  \grg a8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ]  \grg a8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ]| \bar ":|.-.|"
  \break
  \grg G8. \grd a16 \gre a8 ]  \grg d8. [ \grG b16 \gre a8 ] |
  \grg b8. [ \xNotesOn \once \hide Stem {\grace {a4}} \xNotesOff a16 \gre a8 ] \grg b8. [ \xNotesOn \once \hide Stem {\grace {a4}} \xNotesOff a16 \gre a8 ]  |
  \grg d8. [ \grG b16 \gre a8 ] \grg b8. [ \xNotesOn \once \hide Stem {\grace {a4}} \xNotesOff   a16 \gre a8 ] |
  \grg a8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ]  \grg a8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ]| 
  \break
  \grg d8. [ \grG b16 \gre a8 ] \grg b8. [ \xNotesOn \once \hide Stem {\grace {a4}} \xNotesOff   a16 \gre a8 ] |
  \grg f8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ] \grg b8. [ \xNotesOn \once \hide Stem {\grace {a4}} \xNotesOff  a16 \gre a8 ] |
  \grg f8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ] \grg b8. [ \xNotesOn \once \hide Stem {\grace {a4}} \xNotesOff a16 \gre a8 ] |
  \grg a8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ] \grg a8. [ \xNotesOn \once \hide Stem {\grace {c4}} \xNotesOff  a16 \gre a8 ]| \bar "|.-.|:"
  \break  
}



Taorluath = 
{
  \time 2/4 
  \repeat volta 2 { 
                    \grg G8.^\markup {\bold \large "Taorluath"} [ \Gtaor a16] \grg f8. [ \taor a16 ] |
                    \grg b8. [ \taor a16 ] \cad b8 [ \grG a8 ] |
                    \grg f8. [ \taor a16 ] \cad b8 [ \grG a8 ] |
                    \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] | \bar ":|.-.|"
                    \break    
                  }
                    \grg G8. [ \Gtaor a16 ]  \grg d8. [ \taor a16 ] |
                    \grg b8. [ \taor a16 ] \cad b8 [ \grG a8 ] |
                    \grg d8. [ \taor a16 ] \cad b8 [ \grG a8 ] |
                    \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] |
                    \break
                    \grg G8. [ \Gtaor a16 ]  \grg e8. [ \taor a16 ] |
                    \grg d8. [ \btaor a16 ] \cad b8 [ \grG a8 ] |
                    \grg f8. [ \taor a16 ] \cad b8 [ \grG a8 ] |
                    \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] | \bar "|.-.|:"
                    \break
}

TaorluathDoubling = 
{
  \time 2/4 
  \repeat volta 2 { 
                    \grg G8.^\markup {\bold \large "Taorluath Doubling"} [ \Gtaor a16] \grg f8. [ \taor a16 ] |
                    \grg b8. [ \taor a16 ] \grg b8. [ \taor a16 ] |
                    \grg f8. [ \taor a16 ] \grg b8. [ \taor a16 ] |
                    \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] | \bar ":|.-.|"
                    \break    
                  }
                    \grg G8. [ \Gtaor a16 ] \grg d8. [ \taor a16 ] |
                    \grg b8. [ \taor a16 ] \grg b8. [ \taor a16 ] |
                    \grg d8. [ \btaor a16 ] \grg b8. [ \taor a16 ] |
                    \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] |
                    \break
                    \grg G8. [ \Gtaor a16 ] \grg e8. [ \taor a16 ] |
                    \grg d8. [ \btaor a16 ] \grg b8. [ \taor a16 ] |
                    \grg f8. [ \taor a16 ] \grg b8. [ \taor a16 ] |
                    \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] | \bar "|.-.|:"
                    \break
}

Crunluath = 
{
  \time 2/4 
  \repeat volta 2 { 
                    \grg G8.^\markup {\bold \large "Crunluath"} [ \Gcrun e16] \grg f8. [ \crun e16 ] |
                    \grg b8. [ \crun e16 ] \cad b8 [ \grG a8 ] |
                    \grg f8. [ \crun e16 ] \cad b8 [ \grG a8 ] |
                    \grg a8. [ \crun e16 ] \grg a8. [ \crun e16 ] | \bar ":|.-.|"
                    \break    
                  }
                    \grg G8. [ \Gcrun e16 ] \grg d8. [ \crun e16 ] |
                    \grg b8. [ \crun e16 ] \cad b8 [ \grG a8 ] |
                    \grg d8. [ \dcrun e16 ] \cad b8 [ \grG a8 ] |
                    \grg a8. [ \crun e16 ] \grg a8. [ \crun e16 ] |
                    \break
                    \grg G8. [ \Gcrun e16 ] \grg e8. [ \crun e16 ] |
                    \grg d8. [ \dcrun e16 ] \cad b8 [ \grG a8 ] |
                    \grg f8. [ \crun e16 ] \cad b8 [ \grG a8 ] |
                    \grg a8. [ \crun e16 ] \grg a8. [ \crun e16 ] | \bar "|.-.|:"
                    \break

}

CrunluathDoubling = 
{
    \time 2/4 
  \repeat volta 2 { 
                    \grg G8.^\markup {\bold \large "Crunluath Doubling"} [ \Gcrun e16] \grg f8. [ \crun e16 ] |
                    \grg b8. [ \crun e16 ] \grg b8. [ \crun e16 ] |
                    \grg f8. [ \crun e16 ] \grg b8. [ \crun e16 ] |
                    \grg a8. [ \crun e16 ] \grg a8. [ \crun e16 ] | \bar ":|.-.|"
                    \break    
                  }
                    \grg G8. [ \Gcrun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg b8. [ \crun e16 ] \grg b8. [ \crun e16 ] |
                    \grg d8. [ \dcrun e16 ] \grg b8. [ \crun e16 ] |
                    \grg a8. [ \crun e16 ] \grg a8. [ \crun e16 ] |
                    \break
                    \grg G8. [ \Gcrun e16 ] \grg e8. [ \crun e16 ] |
                    \grg d8. [ \dcrun e16 ] \grg b8. [ \crun e16 ] |
                    \grg f8. [ \crun e16 ] \grg b8. [ \crun e16 ] |
                    \grg a8. [ \crun e16 ] \grg a8. [ \crun e16 ] | \bar "|."
                    \break
  
  
                    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
                    \override Score.RehearsalMark #'self-alignment-X = #RIGHT
                    \mark "D.C. al Fine" |
}



% This just outputs both a portrait and a landscape pdf file.  
% By naming the \bookOutputName the same as the file name, you 
% get the engraving in the Frescobaldi window on the right. 

\book {
  \bookOutputName "CatherinesLament"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \urlar
          \varI
          \varIdoubling
          \pageBreak
          \Taorluath
          \TaorluathDoubling
          \Crunluath
          \CrunluathDoubling         

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
  \bookOutputName "CatherinesLament_Landscape"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \urlar
          \varI
          \pageBreak
          \varIdoubling
          \Taorluath
          \TaorluathDoubling
          \Crunluath
          \CrunluathDoubling 
        }
      >>		
    \layout { \ScoreLayout }
    \header{
      %piece = "Echo Lake "
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
			        \urlar
			        \varI
			        \varIdoubling
			        \Taorluath
			        \TaorluathDoubling
			        \Crunluath
			        \CrunluathDoubling 
			}
		>>		
	\midi { \midiSettings }	
}
