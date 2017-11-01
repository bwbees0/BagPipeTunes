\version "2.19.58"

\include "bagpipe.ly" 
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/score_settings.ly"

filename = "~/Auld-Sword-Lament-Voices.ly"
tunesetVersion = "Version 1"
source = "multiple"

#(define-bar-line "|.-b" "|." ".|" "|.") %This is for putting all parts in one score!
#(define-bar-line ":|.-.|" ":|." ".|" "|." )    
\defineBarLine    "|.-.|:" #'("|." ".|:" "" ) %This rocks! This ends a repeated part and starts a non-repeated part.
\defineBarLine    ":|.-.|:" #'(":|." ".|:" "" ) %This rocks! This ends a repeated part and starts a repeated part.
#(define-bar-line ":|.-.|" ":|." ".|" "|." )    


#(set-global-staff-size 16)

% Cadence 'cad' is copied from bagpipe.ly and a fermata is added over the e to match the setting
cad_eye      = { \pgrace { \stemspace #'(0 . 0.5) g32[ e8\fermata d32] } } 

#(allow-volta-hook "||")
#(allow-volta-hook "|")

voltaTwice = \markup  { \hspace #20 \text \italic \fontsize #+5 { Play Twice }  }
voltaLineTwoOnly = \markup { \hspace #15 \text \italic \fontsize #+5 { Line 2 Only } }
voltaLineThreeOnly = \markup { \hspace #15 \text \italic \fontsize #+5 { Line 3 Only } }

hiharin = { \grg e4 \dbirl a4 } 



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
                    A8. [ a16 ] \grg e8. [ \grg a16 ] \grA g8. [ \grA a16 ] \grg d8. [ \gre a16 ] |
                    \grg e8. [ \grg c16 ] \grg c8. [ \gre a16 ] \grg b8. [ \gre a16 ] \grg d8. [ \gre a16 ] |
                    A8. [ a16 ] \grg e8. [ \grg a16 ] \grA g8. [ \grA a16 ] \grg d8. [ \gre a16 ] |  
                    \grg e8. [ \grg a16 ]  \grg b8. [ \gre a16 ] \grg a8. [  \gre a16 ] \grg a8. [  \gre a16 ] |
                    \break 
                    A8. [ a16 ] \grg e8. [ \grg a16 ] \grA g8. [ \grA a16 ] \grg d8. [ \gre a16 ] |
                    \grg e8. [ \grg c16 ] \grg c8. [ \gre a16 ] \grg b8. [ \gre a16 ] \grg d8. [ \gre a16 ] |
                    \grg c8. [ \gre a16 ] \grg a8. [ \gre a16 ] \grg b8. [ \gre a16 ] \grg e8. [ \gre a16 ] |
                    \grA g8. [ \grA a16 ]  \grg b8. [ \gre a16 ]  \grg a8. [ \gre a16 ] \grg a8. [ \gre a16 ] | \bar "|.-.|:"
                    \break
}


varLyrics = \lyricmode {
                    ho en hin en eo en che en |
                    I in ho en eo en ha en |
                    ho en hin en eo en che en |
                    chi hin hi en hin en hin en |
                    \break
                    I en che en chi en ha en |
                    che ho ho en hio en ha en |
                    I en che hin chi en ha en |
                    che hin hio en hin en hin en |
                    \break 
                    I en che en chi en ha en |
                    che ho ho en hio en ha en |
                    ho en hin en eo en che en |
                    chi hin hi en hin en hin en |                   
                    \break
                   }

Doubling = 
{
 \repeat volta 2 {
                   \grg c8. [ \gre c16 ] \grg a8. [ \gre a16 ]  \grg b8. [ \gre b16 ] \grg e8. [ \grg e16 ] |
                   \dblA A8. [ \grg A16 ] c8. [ \gre c16 ]  \grg b8. [ \gre b16 ] \grg d8. [ \gre d16 ] |
                   \grg c8. [ \gre c16 ] \grg a8. [ \gre a16 ]  \grg b8. [ \gre b16 ] \grg e8. [ \grg e16 ] |
                   \grA g8. [ \grA g16 ]  \grA b8. [ \gre b16 ] \grg a8. [ \gre a16]  \grg a8. [ \gre a16 ] |\bar ":|.-.|" 
                   \break
                 }
                   \dblA A8.[ \grg A16 ] e8. [ \grg e16 ]  \grA g8. [ \grA g16 ]  \grA d8. [ \gre d16 ] |
                   \grg e8. [ \grg e16 ] \grg c8. [ \gre c16 ]  \grg b8. [ \gre b16]  \grg d8. [ \gre d16 ] |
                   \dblA A8.[ \grg A16 ] e8. [ \grg e16 ]  \grA g8. [ \grA g16 ]  \grA d8. [ \gre d16 ] |
                   \grg e8. [ \grg e16 ] \grg b8. [ \gre b16 ] \grg a8. [ \gre a16]  \grg a8. [ \gre a16 ] |
                   \break
                   \dblA A8.[ \grg A16 ] e8. [ \grg e16 ]  \grA g8. [ \grA g16 ]  \grA d8. [ \gre d16 ] |
                   \grg e8. [ \grg e16 ] \grg c8. [ \gre c16 ]  \grg b8. [ \gre b16]  \grg d8. [ \gre d16 ] |
                   \grg c8. [ \gre c16 ] \grg a8. [ \gre a16 ]  \grg b8. [ \gre b16 ] \grg e8. [ \grg e16 ] |
                   \grA g8. [ \grA g16 ]  \grA b8. [ \gre b16 ] \grg a8. [ \gre a16]  \grg a8. [ \gre a16 ] |\bar "|.-.|:"
                   \break
}

doublingLyrics = \lyricmode {
                 ho eo hin en hio eo che che |
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
                }

Taoludh = 
{
  \repeat volta 2 {
                    \grg c8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg e8. [ \taor a16 ] |
                         A8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg d8. [ \btaor a16 ] |                     
                    \grg c8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg e8. [ \taor a16 ] |
                    \grA g8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] | \bar ":|.-.|" 
                    \break
                 }
                         A8. [ \taor a16 ] \grg e8. [ \taor a16 ] \grA g8. [ \taor a16 ] \grg d8. [ \btaor a16 ] |
                    \grg e8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg d8. [ \btaor a16 ] |
                         A8. [ \taor a16 ] \grg e8. [ \taor a16 ] \grA g8. [ \taor a16 ] \grg d8. [ \btaor a16 ] |
                    \grg e8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] |
                    \break
                         A8. [ \taor a16 ] \grg e8. [ \taor a16 ] \grA g8. [ \taor a16 ] \grg d8. [ \btaor a16 ] |
                    \grg e8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg d8. [ \btaor a16 ] | 
                    \grg c8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg e8. [ \taor a16 ] |
                    \grA g8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] | \bar "|.-.|:"
                    \break
}

taoludhLyrics = \lyricmode {
                   ho darid hin darid hio darid che darid |
                   I darid ho darid hio darid ha darid |
                   ho darid hin darid hio darid che darid |
                   chi darid hio darid hin darid hin darid |
                   \break
                   I darid  che darid chi darid ha darid |
                   che darid ho darid hio darid ha darid |
                   I darid che darid chi darid  ha darid |
                   che darid hio darid hin darid hin darid |
                   \break
                   I darid che darid  chi darid ha darid |
                   che darid ho darid hio darid ha darid |
                   ho darid hin darid hio darid che darid |
                   chi darid hio darid hin darid hin darid |
                   \break
                   }

TaoludhDoubling = { \bar ".|:"
  \repeat volta 2 { 
                   \cad c8.  [ \taor a16 ] \grg a8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg e8. [ \taor a16 ] |
                   A8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg d8. [ \btaor a16 ] |
                   \grg c8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg e8. [ \taor a16 ] |
                   \grA g8. [ \taor 16 ] \grg b8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] | \bar ":|.-.|" 
                   \break
                  }
                  A8. [ \taor a16 ] \grg e8. [ \taor a16 ] \grA g8. [ \taor a16 ] \grg d8. [ \taor a16 ] |
                  \grg e8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg d8. [ \btaor a16 ] |
                  A8. [ \taor a16 ] \grg e8. [ \taor a16 ] \grA g8. [ \taor a16 ] \grg d8. [ \taor a16 ] |
                  \grg e8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] |
                  \break
                  A8. [ \taor a16 ] \grg e8. [ \taor a16 ] \grA g8. [ \taor a16 ] \grg d8. [ \taor a16 ] |
                  \grg e8. [ \taor a16 ] \grg c8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg d8. [ \btaor a16 ] |
                  \grg c8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg b8. [ \taor a16 ] \grg e8. [ \taor a16 ] |
                  \grA g8. [ \taor 16 ] \grg b8. [ \taor a16 ] \grg a8. [ \taor a16 ] \grg a8. [ \taor a16 ] | \bar ":|.-.|" 
                   \break
}

taoludhDoublingLyrics =  \lyricmode {}



Criunnludh = {
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
                    \grg e8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg a8. [ \crun e16]  \grg a8. [ \crun e16 ] |
                    \break
                    A8. [ \crun e16 ]  \grg e8. [ \crun e16]  \grA g8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg e8. [ \crun e16 ] \grg c8. [ \crun e16 ]  \grg b8. [ \crun b16 ] \grg d8. [ \dcrun e16 ] |
                    \grg c8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg e8. [ \crun e16] |
                    \grA g8. [ \crun e16 ] \grg b8. [ \crun e16 ]  \grg a8. [ \crun e16 ] \grg a8. [ \crun e16 ] | \bar "|.-.|:"
                    \break
}

criunnludhLyrics = \lyricmode  {                 
                  ho bandre hin bandre hio bandre che bandre |
                  I bandre ho bandre hio bandre ha bandre |
                  ho bandre hin bandre hio bandre che bandre |
                  chi bandre hio bandre hin bandre hin bandre |
                  \break
                  I bandre che bandre chi bandre ha bandre |
                  che bandre ho bandre hio bandre ha bandre |
                  I bandre che bandre chi bandre ha bandre |
                  che bandre hio bandre hin bandre hin bandre |
                  \break
                  I bandre che bandre chi bandre ha bandre |
                  che bandre ho bandre hio bandre ha bandre |
                  ho bandre hin bandre hio bandre che bandre |
                  chi bandre hio bandre hin bandre hin bandre |
                  \break
                  }


CriunnludhDoubling = {
  \repeat volta 2 {
                    \cad c8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg e8. [ \crun e16 ] |
                         A8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg c8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg e8. [ \crun e16 ] |
                    \grA g8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg a8. [ \crun e16 ] | \bar ":|.-.|" 
                    \break
                  }
                         A8. [ \crun e16 ] \grg e8. [ \crun e16 ] \grA g8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg e8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                         A8. [ \crun e16 ] \grg e8. [ \crun e16 ] \grA g8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg e8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg a8. [ \crun e16 ] |
                    \break
                         A8. [ \crun e16 ] \grg e8. [ \crun e16 ] \grA g8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg e8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg c8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg e8. [ \crun e16 ]  |
                    \grA g8. [ \crun e16 ] \grg b8. [ \crun e16 ]  \grg a8. [ \crun e16 ]  \grg a8. [ \crun e16 ] 
                    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
                    \override Score.RehearsalMark #'self-alignment-X = #RIGHT
                    \mark "D.C. al Fine" |
                    \break 
}

criunnludhDoublingLyrics = \lyricmode { }


Criunnludh_Kilberry = {
  \repeat volta 2 {
                    \grg c8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg e8. [ \crun e16 ] |
                         A8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg c8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg e8. [ \crun e16 ] |
                    \grA g8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg a8. [ \crun e16 ] | \bar ":|.-.|" 
                    \break
                  }
                         A8. [ \crun e16 ] \grg e8. [ \crun e16 ] \grA g8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg e8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                         A8. [ \crun e16 ] \grg e8. [ \crun e16 ] \grA g8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg e8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg a8. [ \crun e16 ] |
                    \break
                         A8. [ \crun e16 ] \grg e8. [ \crun e16 ] \grA g8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg e8. [ \crun e16 ] \grg c8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg d8. [ \dcrun e16 ] |
                    \grg c8. [ \crun e16 ] \grg a8. [ \crun e16 ] \grg b8. [ \crun e16 ] \grg e8. [ \crun e16 ]  |
                    \grA g8. [ \crun e16 ] \grg b8. [ \crun e16 ]  \grg a8. [ \crun e16 ]  \grg a8. [ \crun e16 ] 
                    \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
                    \override Score.RehearsalMark #'self-alignment-X = #RIGHT
                    \mark "D.C. al Fine" |
                    \break 
}
