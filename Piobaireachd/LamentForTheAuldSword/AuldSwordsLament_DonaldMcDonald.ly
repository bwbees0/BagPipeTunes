\version "2.18"


\include "bagpipe.ly" 
\include "/home/ben/workspace/BagpipeTunes_Working/TuneBook_ly/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitLab/Atlanta_Pipe_Band_Tunes/include/score_settings_AuldSword.ly"

filename = "~/AuldSwordsLament_DonaldMcDonald.ly"
tunesetVersion = "Version 1"
source = \markup { \with-url #"http://www.altpibroch.com/PrimarySources/150-D2_10-Lament_for_the_Old_Sword.pdf"
                                  { Alt Pibboch Club PS 1150-D2_10-Lament_for_the_Old_Sword.pdf}
                 }


\header { 
          title = "Lament for the old Sword"
          subtitle = ""
          composer = "Traditional"
          arranger = "Donald McDonald Setting"
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
                   \grA g4 b16 [ \grip b8. ] \hiharin 
                   \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
                   \override Score.RehearsalMark #'self-alignment-X = #RIGHT
                   \mark "Fine" | \bar "|.-.|:"
                   \break    
      }

urlarLyrics = \lyricmode {
                    ho din bain hiho dre |
                    I ho dro hio ho tra |
                    ho din bain hiho dre |
                    chi o tro hi harin |
                    \break
                    I edre chi e tra |
                    che ho dro  hio ho tra|
                    I edre chi e tra | 
                    che ho dro hio din |
                    \break 
                    I edre chi e tra |
                    che ho dro hio ho tra |
                    ho din  bain hiho dre |
                    chi o tro hi harin |
                    \break
                    }


varI =
{
  \repeat volta 2 {
                    \cad c8. [ \gre a16 ] \grg a8. \gre a16 ] \grg c8. [ \gre a16 ] \grg e8. [ \gre a16 ] |
                    A8. [ a16 ] \grg c8. [ \gre a16 ] \cad b8. [ \gre c16 ] \thrwd d4  |
                    \cad c8. [ \gre a16 ] \grg a16 [ \gre a8.] \grg b8. [ \gre a16 ] \grg e8. [ \gre a16 ] |
                    \grA g8. [ \grA a16 ]  \grg b8. [ \gre a16 ]  \hiharin | \bar ":|.-.|"  
                    \break
                  }
                    A8. [ a16 ] \grg e8. [ \gre a16 ] \grA g8. [ \grA a16 ] \grg d8. [ \gre a16 ] |
                    \grg e8. [ \gre c16 ] \grg c8. [ \gre a16 ] \cad b8. [ \gre c16 ] \thrwd d4  |  
                    A8. [ a16 ] \grg e8. [ \grg a16 ] \grA g8. [ \grA a16 ] \grg d8. [ \gre a16 ] |  
                    \grg e8. [ \gre a16 ]  \grg c8. [ \gre a16 ] \cad b4 \grG a4 |
                    \break 
                    A8. [ a16 ] \grg e8. [ \gre a16 ] \grA g8. [ \gre a16 ] \grg d8. [ \gre a16 ] |
                    \grg e8. [ \grg a16 ] \grg c8. [ \gre a16 ] \cad b8. [ c16 ]  \thrwd d4 ||
                    \cad c8. [ \gre a16 ] \grg a8. [ \gre a16 ] \grg c8. [ \gre a16 ] \grg e8. [ \gre a16 ] |
                    \grA g8. [ \grA a16 ] \grg b8. [ \gre a16 ] \hiharin | \bar "|.-.|:"
                    \break
}


varLyrics = \lyricmode {
                    hiho en hin en ho en che en |
                    I in ho en hio ho tra |
                    hiho en hin en hio en che en |
                    chi hin hi en hi harin |
                    \break
                    I en che en chi en ha en |
                    che en ho en hio en tra |
                    I en che en chi en ha en |
                    che en ho en hio din |
                    \break 
                    I en che en chi en ha en |
                    che en ho en hio en tra |
                    hio en hin en ho en che en |
                    chi en hio en hi harin |                   
                    \break
                   }

Doubling = 
{
  \repeat volta 2 {
                   \cad c8. [ \gre a16 ] \grg a8. [ \gre a16 ]  \grg c8. [ \gre a16 ] \grg e8. [ \grg a16 ] |
                        A8. [ \grg a16 ] c8. [ \gre a16 ]  \grg b8. [ \gre a16 ] \grg d8. [ \gre a16 ] |
                   \grg c8. [ \gre a16 ] \grg a8. [ \gre a16 ]  \grg c8. [ \gre a16 ] \grg e8. [ \grg a16 ] |
                   \grA g8. [ \grA a16 ] \grA b8. [ \gre a16 ] \grg a8. [ \gre a16]  \grg a8. [ \grg a16 ] | 
                   \break
  }
  %{
                   \grg c8. [ \gre a16 ] \grg a8. [ \gre a16 ] \grg c8. [ \gre a16 ] \grg e8. [ \gre a16 ] |
                        A8. [ [ a16 ]    \grg c8. [ \gre a16 ] \grg b8. [ \gre a16 ] \grg d8. [ \gre a16 ] |
                   \grg c8. [ \gre a16 ] \grg a8. [ \gre a16 ] \grg c8. [ \gre a16 ] \grg e8. [ \gre a16 ] |
                   \grA g8. [ \grA a16 ] \grg b8. [ \gre a16 ] \grg a8. [ \gre a16 ] \grg a8. [ \gre a16 ] |
                   \break
  %}
                 
                         A8.[      a16 ] \grg e8. [ \grg a16 ] \grA g8. [ \grA a16 ] \grg d8. [ \gre a16 ] |
                   \grg e8. [ \grg a16 ] \grg c8. [ \gre a16 ] \grg b8. [ \gre a16]  \grg d8. [ \gre a16 ] |
                         A8.[      a16 ] \grg e8. [ \grg a16 ] \grA g8. [ \grA a16 ] \grg d8. [ \gre a16 ] |
                   \grg e8. [ \gre a16 ] \grg c8. [ \gre a16 ] \grg b8. [ \gre a16]  \grg a8. [ \gre a16 ] |
                   \break
                   \dblA A8.[      a16 ] \grg e8. [ \gre a16 ]  \grA g8. [ \grA a16 ] \grg d8. [ \gre a16 ] |
                   \grg e8. [ \gre a16 ] \grg c8. [ \gre a16 ]  \grg b8. [ \gre a16]  \grg d8. [ \gre a16 ] |
                   \grg c8. [ \gre a16 ] \grg a8. [ \gre a16 ]  \grg c8. [ \gre a16 ] \grg e8. [ \gre a16 ] |
                   \grA g8. [ \grA a16 ] \grg b8. [ \gre a16 ]  \grg a8. [ \gre a16]  \grg a8. [ \gre a16 ] |\bar "|.-.|:"
                   \break
}

doublingLyrics = \lyricmode {
            %{     hio eo hin en hio eo che che |
                 dili I ho eo hio eo ha ea |
                 ho eo hin en hio eo che che |
                 chi chi hio eo hin en hin en |
                 \break
                 dili I de che chi chi ha ea |
                 che che ho eo hio eo ha ha |
                 dili I de che chi chi ha ea |
                 che che hio eo hin en hin en |
                 \break
                 dili I de che chi chi ha ea |
                 che che ho eo hio eo ha ha |
                 ho eo hin en hio eo che che |
                 chi chi hio eo hin en hin en |
                 \break
            %}    }

Taoludh = 
{
  \repeat volta 2 {
                    \cad c8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg e8. [ \taor a16] |
                    A8. [ \taor a16 ] \grg c8. [ \taor a16]  \cad b8. c16 \thrwd d4 |                    
                    \cad c8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg e8. [ \taor a16] |
                    \grA g8. [ \taor a16 ] \grg b8. [ \taor a16 ]  \hiharin | \bar ":|.-.|" 
                    \break
                 }
                    A8. [ \taor a16 ]  \grg e8. [ \taor a16] \grA g8. [ \taor a16 ] \grg d8. [ \btaor a16 ] |
                    \grg e8. [ \taor a16 ] \grg c8. [ \taor a16 ]  \cad b8. c16 \thrwd d4 |
                    A8. [ \taor a16 ]  \grg e8. [ \taor a16] \grA g8. [ \taor a16 ] \grg d8. [ \btaor a16 ] |
                    \grg e8. [ \taor a16 ] \grg c8. [ \taor a16 ] \cad b4 \grG a4 |
                    \break
                    A8. [ \taor a16 ]  \grg e8. [ \taor a16] \grA g8. [ \taor a16 ] \grg d8. [ \btaor a16 ] |
                    \grg e8. [ \taor a16 ] \grg c8. [ \taor a16 ]  \cad b8. c16 \thrwd d4 |
                    \grg c8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg e8. [ \taor a16] |
                    \grA g8. [ \taor a16 ] \grg b8. [ \taor a16 ]  \hiharin| \bar "|.-.|:"
                    \break
}

taoludhLyrics = \lyricmode {
                   ho daird hin darid hio darid che darid |
                   I darid ho darid hio ho tra |
                   ho darid hin darid ho darid che darid |
                   chi darid hio darid hi harin |
                   \break
                   I darid  che darid chi darid ha darid |
                   che darid ho daird hio ho tra |
                   I darid che darid chi darid  ha darid |
                   che darid ho darid hio din |
                   \break
                   I daird che darid  chi darid ha daird |
                   che darid ho diard hio ho tra |
                   ho darid hin darid ho darid che darid |
                   chi darid hio darid hi harin | 
                   \break
                   }

TaoludhDoubling = { \bar ".|:"
  \repeat volta 2 { 
                   \cad c8.  [ \taor a16 ] \grg a8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg e8. [ \taor a16 ] |
                   A8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg d8. [ \taor a16 ] |
                   \grg c8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg e8. [ \taor a16 ] |
                   \grA g8. [ \taor 16 ] \grg b8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] | \bar ":|.-.|" 
                   \break
                  }
                  A8. [ \taor a16 ] \grg e8. [ \taor a16 ] \grA g8. [ \taor a16 ] \grg d8. [ \taor a16 ] |
                  \grg e8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg d8. [ \taor a16 ] |
                  A8. [ \taor a16 ] \grg e8. [ \taor a16 ] \grA g8. [ \taor a16 ] \grg d8. [ \taor a16 ] |
                  \grg e8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg a8. [ \taor a16 ] |
                  \break
                  A8. [ \taor a16 ] \grg e8. [ \taor a16 ] \grA g8. [ \taor a16 ] \grg d8. [ \taor a16 ] |
                  \grg e8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg d8. [ \taor a16 ] |
                  \grg c8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg e8. [ \taor a16 ] |
                  \grA g8. [ \taor 16 ] \grg b8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] | \bar ":|.-.|" 
                   \break
}

taoludhDoublingLyrics =  \lyricmode {}



Criunnludh = {
   \repeat volta 2 {
                    \cad c8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg e8. [ \crun e16] |
                    A8. [ \crun e16 ] \grg c8. [ \crun e16]  \cad b8. c16 \thrwd d4 |                    
                    \grg c8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg e8. [ \crun e16] |
                    \grA g8. [ \crun e16 ] \grg b8. [ \crun e16 ]  \hiharin | \bar ":|.-.|" 
                    \break
                 }
                    A8. [ \crun e16 ]  \grg e8. [ \crun e16]  \grA g8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg e8. [ \crun e16 ] \grg c8. [ \crun e16 ]  \cad b8. c16 \thrwd d4 |
                    A8. [ \crun e16 ]  \grg e8. [ \crun e16]  \grA g8. [ \crun e16 ] \grg d8. [ \dcrun a16 ] |
                    \grg e8. [ \crun e16 ] \grg c8. [ \crun e16 ] \cad b4 \grG a4 |
                    \break
                    A8. [ \crun e16 ]  \grg e8. [ \crun e16]  \grA g8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg e8. [ \crun e16 ] \grg c8. [ \crun e16 ]  \cad b8. c16 \thrwd d4 |
                    \grg c8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg e8. [ \crun e16] |
                    \grA g8. [ \crun e16 ] \grg b8. [ \crun e16 ]  \hiharin | \bar "|.-.|:"
                    \break
}

criunnludhLyrics = \lyricmode {
                  hio bandre hin bandre ho bandre che bandre |
                  I bandre ho bandre hio ho tra |
                  ho bandre hin bandre ho bandre che bandre |
                  chi bandre hio bandre hi harin |
                  \break
                  I bandre che bandre chi bandre ha bandre |
                  che bandre ho bandre hio ho tra |
                  I bandre che bandre chi bandre ha bandre |
                  che bandre ho bandre hio din |
                  \break
                  I bandre che bandre chi bandre ha bandre |
                  che bandre ho bandre hio ho tra |
                  ho bandre hin bandre hio bandre che bandre |
                  chi bandre hio bandre hi harin |
                  \break
                  }


CruinnludhDoubling = {
  \repeat volta 2 {
                    \cad c8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg e8. [ \crun e16 ] |
                         A8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg c8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg e8. [ \crun e16 ] |
                    \grA g8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg a8. [ \crun e16 ] | \bar ":|.-.|" 
                    \break
                  }
                    \grA g8. [ \crun e16 ] \grg e8. [ \crun e16 ] \grA g8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg e8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                         A8. [ \crun e16 ] \grg e8. [ \crun e16 ] \grA g8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg e8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg a8. [ \crun e16 ] |
                    \break
                         A8. [ \crun e16 ] \grg e8. [ \crun e16 ] \grA g8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg e8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg b8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg e8. [ \crun e16 ]  |
                    \grA g8. [ \crun e16 ] \grg b8. [ \crun e16 ]  \grg a8. [ \crun e16 ]  \grg a8. [ \crun e16 ] 
                    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
                    \override Score.RehearsalMark #'self-alignment-X = #RIGHT
                    \mark "D.C. al Fine" |
                    \break 
}

criunnludhDoublingLyrics = \lyricmode { }

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
  \pageBreak
  \score {
       \new Staff <<
        \new Voice = "Criunnludh" {
          \global
          \Criunnludh
        } 
  \new Lyrics { 
          \lyricsto "Criunnludh" { \criunnludhLyrics }
        }
       >>
 \layout { \ScoreLayout  #(layout-set-staff-size 13) }
 \header{
         piece = "VI. Criunnludh"
         %opus = "Donald Macleod"
        }
  }
    \score {
       \new Staff <<
        \new Voice = "Criunnludh Doubling" {
          \global
          \CruinnludhDoubling
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
