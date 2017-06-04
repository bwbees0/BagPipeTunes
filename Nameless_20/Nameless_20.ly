% Created on Sat May 19 12:13:19 PDT 2012
\version "2.18"

filename = "~\Nameless_20.ly"
tunesetVersion = "Version 3"

\header {
	 myTitle = "20. Nameless "
         title = \markup { \fromproperty #'header:myTitle \footnote \super \char #8224 \concat {
                                 \super \char #8224  \myTitle } }
         subtitle = "(A Lament)"
	composer = "Traditional"
	%arranger = "Arranger" 
	%meter = "Ceol Mor"
	%instrument = "Great Highland Bagpipe"
        tagline = \markup { \filename "  "  \tunesetVersion "  "  
          Engraved at
          \simple #(strftime "%d - %b - %Y - %H%M  " (localtime (current-time)))
         % with \with-url #"http://lilypond.org/"
         % \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
        }    
}


%\include "english.ly"
\include "bagpipe.ly"
\include "/home/ben/workspace/BagpipeTunes_Working/TuneBook_ly/BWB_Bagpipe.ly"
\include "/home/ben/workspace/BagpipeTunes_Working/TuneBook_ly/score_settings.ly"

#(set-global-staff-size 14)
\paper {
	#(set-paper-size "letter" 'portrait)
}

% Cadence 'cad' is copied from bagpipe.ly and a fermata is added over the e to match the setting
cad_eye      = { \pgrace { \stemspace #'(0 . 0.5) g32[ e8\fermata d32] } } 

#(allow-volta-hook "||")
#(allow-volta-hook "|")


voltaTwice = \markup  { \hspace #20 \text \italic \fontsize #+5 { Play Twice }  }
voltaLineTwoOnly = \markup { \hspace #15 \text \italic \fontsize #+5 { Line 2 Only } }

ggrip = { \pgrace { a32 [g a]}}

%  MM_ prefixed items are to show as printed in the MacArthur-MacGregor manuscript performance settings.

MMhcad = { \pgrace { \stemspace #'(0 . 0.5) g32[ e] } }
MMcad  = { \pgrace { \stemspace #'(0 . 0.5) g32[ e d] } }

acad  = { \pgrace { A32 [ g] }}
hgcad = { \pgrace { g32 [ f] }}
gcad  = { \pgrace { g32 [ f e ] }} 
gfcad    = { \pgrace { \stemspace #'(0 . 0.5) g32[ f] } }
gfecad   = { \pgrace { \stemspace #'(0 . 0.5) g32[ f e] } }
Gccad    = { \pgrace { G32 [ c ] } }

hchedari = { \pgrace { g32 [ e f e ] }}
hdari    = { \pgrace { g32 [ e f e]  }}

hthrwe = { \pgrace { a32 [ f a ] }}
embari = { \pgrace { G32[ e G f G] }} 
endari = { \pgrace { a32 [ g32 a32 f32 a32 ] }}




% dgcad and dghcad are cadences taken from David Glen's The Edinburgh Collection of Highland Bagpipe Music.  
% See Duncan McRae of Kintail's Lament for an example. 
dgcad    = { \pgrace { \stemspace #'(0 . 0.5) g32[ e16<>\startGraceSlur d16] <>\stopGraceSlur } }
dghcad   = { \pgrace { \stemspace #'(0 . 0.5) g32[<>\startGraceSlur e8] <>\stopGraceSlur } }





urlar= { 
    %\bagpipeKey
    \time 4/4
    \bar "||-b"
    % Line 1
    \grA g8. [ \ggrip f16]  \gra e8. [ f16] \acad f8. [ e16 d8. b16 ] | 
    \hgcad e8 [ \gra e8 ]  \gra e4  \grg e8.  [ f16 ] \hchedari g4 |
    \grA f4  \hchedari g4  \dblA A8. [ g16  \hdblA f8. d16 ] |
    \hgcad e8 [ \gra e8 ]  \gra e4  \grg e4  \dare f4 |
    \break
    \grg e4 \thrwf f4 \hchedari g8. [ f16 \gfcad e8. b16] |
    \gfecad d8 [ \grG d8 ] \Gccad d4 \grg d4  \dre e4 |
    \MMhcad  d4 \bari e4 \dare f8. [ e16 d8 \grG a8 ]  |
    \MMcad b8 [ \grG b8 ]  \grG b4 \MMcad b8 [ \grG b8 ]  \grG b4  | \bar "||-b"
    \break
    % Line 2 
    \grA g8. [ \ggrip f16]  \gra e8. [ g16] \acad f8. [ e16 d8. b16 ] | 
    \hgcad e8 [ \gra e8 ]  \gra e4  \grg e8.  [ f16 ] \hchedari g4 |
    \grA f4  \hchedari g4  \dblA A8. [ g16  \hdblA f8. d16 ] |
    \hgcad e8 [ \gra e8 ]  \gra e4  \grg e4  \dare f4 |
    \break
    \grg e4 \thrwf f4 \hchedari g8. [ f16 \gfcad e8. b16] |
    \gfecad d8 [ \grG d8 ] \Gccad d4 \grg d4  \dre e4 |
    \MMhcad  d4 \bari e4 \dare f8. [ e16 d8 \grG a8 ]  |
    \MMcad b8 [ \gripthrwd d8 ]  e8. [ d16 ]  \MMcad  b8 [ \grG b8 ]  \grG b4 | \bar "||-b"
    \break
    % Line 3
    \grg f8. [ \endari e16]  \gra d16 [ f8. ]  \grg e4 \hthrwe e8. [ b16] |
    \MMhcad d8 [ \grG d8 ]  \Gccad d4  \grg d4  \embari g4 |
    \grg f8. [\endari e16]  \gra d16 [ f8. ]  \grg e4 \hthrwe e8. [ b16] |
    \MMhcad d8 [ \grG d8 ]  \Gccad d4  \grg d4  \dre g4 |
    \break
    \hcad d4  \dre e4 \hchedari g8. [ e16 f8 d8 ] |
    \gfcad e8 [ \gra e8 ]  \gra e4  \grg e8. [f16 ] \hchedari g4 |
    \grg f8. [ \endari e16]  \gra d16 [ f8. ]  \grg e4 \gripthrwd b16 [ e8. ]|
    \grg d4  \gripthrwd b16 [ g8. ]  \acad f8 [ \gre f8]  \gre f4 | \bar "||-b"
    \break
    % Line 4
    \gfcad e8 [ \gra e8 ]  \gra e4  \grg d8. [ \grG b16 \grG f8. d16] |
    \gfcad e8 [ \gra e8 ]  \gra e4  \grg e8. [ f16]  \hchedari g4 |
    \grA f4 \hchedari g4  \dblA A8. [ g16 \hdblA f8. d16] |
    \gfcad e8 [ \gra e8 ]  \gra e4  \grg e4  \dare f4 |
    \break
    \grg e4 \dare f4  \hchedari g8. [ f16 \gfcad e8. b16] |
    \MMhcad d8 [ \grG d8 ]  \Gccad d4  \MMhcad d4 \dre e4 |
    \MMhcad d4  \dre e4  \dare f8. [ e16 d8 \grG a8] |
    \MMcad b8. [  \dre e16 ]  d8 [ \grG a8 ]  \MMcad b8 [ \grG b8 ]  \grG b4 |\bar "||-b"
    \break   

}
variation_one= {
  \time 6/8
  \bar "||-b"
  \dre g8. [ f16 \grg e8 ]  \grg f8. [ e16 \grg d8 ]|
  \grg e4  \dare f8 \hchedari g4 \grA b8 |
  \grg f4 \hchedari g8  A8 [ g8 \grA f8 ] |
  \gfcad e8 [ \gra e8 \gra e8 ]  \grg f4 \grg d8 |
  \break
  \gfcad e8. [ d16 \grg e8 ]  \hchedari g8. [ f16 \grg e8 ] |
  \MMhcad d8 [ \grG d8 \Gccad d8 ] \grg e4 \grf d8 |
  \grg d4  \dare f8  \grg e8.  [ b16 \gripthrwd d8 ] |
  \MMcad b8 [ \grG b8 \grG b8 ]  \MMcad b4 \grG a8 | \bar "||-b"
  \break
  \dre g8. [ f16 \grg e8 ]  \grg f8. [ e16 \grg d8 ]|
  \grg e4  \dare f8 \hchedari g4 \grA b8 |
  \grg f4 \hchedari g8  A8 [ g8 \grA f8 ] |
  \gfcad e8 [ \gra e8 \gra e8 ]  \grg f4 \grg d8 |
  \break
  \gfcad e8. [ d16 \grg e8 ]  \hchedari g8. [ f16 \grg e8 ] |
  \MMhcad d8 [ \grG d8 \Gccad d8 ] \grg e4 \grf d8 |
  \grg d4  \dare f8  \grg e8.  [ b16 \gripthrwd d8 ] |
  \grg b16 [ \grG a8. \gripthrwd d8]  \MMcad b4 \grG a8 | \bar "||-b"
  \break
  \grg f8. [ e16 \grg d8 ]  \grg e8. [ d16 \gre b8 ] |
  \gcad d8 [ \grG d8 \Gccad d8 ]  \bari g8. [ f16 \grg e8 ] |
  \grg f8. [ e16 \grg d8 ]  \grg e8. [ d16 \gre b8 ] |
  \MMhcad d8 [ \grG d8 \Gccad d8 ]  \grg d4 \gre b8  |
  \break
  \grg d4 \embari e8  \grA f8. [ e16 \grg d8 ] |
  \grg e8 [ \gra e8 \gra e8 ]  \hchedari g8. [ f16 \grg e8 ] |
  \grg f8. [ e16 \grg d8 ]  \grg e8. [ d16 \gre b8 ] |
  \embari g8. [ f16 \grg e8 ]  \grg f4 \grg e8 |\bar "||-b"
  \break
  \gfcad e8 [ \gra e8 \gra e8 ]  \gripthrwd d8. [ c16 \gre b8 ] |
  \gfcad e8 [ \gra e8 \gra e8 ]  \hchedari g8. [ f16 \grg e8 ] |
  \grg f4 \hchedari g8  A8 [ g8 \grA f8 ] |
  \gfcad e8 [ \gra e8 \gra e8 ] \grg f4 \grg e8 | 
  \break
  \gfcad e8. [ d16 \grg e8 ]  \hchedari g8. [ f16 \grg e8 ] |
  \MMhcad d8 [ \grG d8 \Gccad d8 ] \grg e4 \grf d8 |
  \grg d4  \dare f8  \grg e8.  [ b16 \gripthrwd d8 ] |
  \MMcad b8 [ \grG b8 \grG b8 ]  \MMcad b4 \grG a8 | \bar "||-b"
  \break 
  }

%{
Abbreviations_Written = 
{
  \time 1/4
  \override Staff.TimeSignature #'transparent = ##t
  \override Staff.TimeSignature #'stencil = ##f
  \set Score.currentBarNumber = #1
  \set Timing.measurePosition = #(ly:make-moment -1 4) s4  A4\trill |
  c4\trill |
  b4\trill |
  a4\trill |
  c4_\txtaoram |
  b4_\txtaoram |
  c4_\txcrunam |
  b4_\txcrunam |
  \break
}


Abbreviations_Played = {
  
  \time 1/4
  \override Staff.TimeSignature #'transparent = ##t
  \override Staff.TimeSignature #'stencil = ##f
  \set Timing.measurePosition = #(ly:make-moment -1 4) s4 \dblA A4 |
  \grip c4 |
  \grip b4 |
  \grip a4 |
  \grg c16 [\taor c8. ] |
  \grg b16 [\taor b8. ] |
  \grg c16 [\crunamc e8. ] |
  \grg b16 [\crunamb e8. ] |
  \bar "|."
  \break
}
%}

\score { 
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global	
				\defaultTimeSignature
                                \urlar
			}
		>>
	>>	
        \layout { \ScoreLayout 
                  ragged-last = ##f       
        }
        
        \header {
          piece = "Urlar"
          composer = "Traditional"
          source = "The MacArthur-MacGregor Manuscript p. 148"
          opus = "The MacArthur-MacGregor Manuscript p. 148"
        }
}
\score { 
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {
				\global				
                                \variation_one
			}
		>>
	>>	
        \layout { \ScoreLayout       
        }
        
        \header {
          piece = "II Variation "
        }
}


%{
\markup { \vspace #15 }  % add some vertical space before the abbreviations
\markup
{
  \fill-line {}
	\fill-line{ 
                \column {}
		\column{  \line {Abbreviations Used } }
                \column {}
	}
  \line{}  
}

\score { 
	\new StaffGroup  <<
		\new Staff  \with {instrumentName = #"Written"}
                {
				\global				
                                \Abbreviations_Written                       
                }
               \new Staff \with {instrumentName = #"Played"}
               {
                               	\global				
                                \Abbreviations_Played                       
               }	
	>>	
        \layout { 
                    \ScoreLayout 
                     indent = 0.5\in  % move it over so the staff names fit
                    \context { \Staff \remove "Time_signature_engraver" \remove "Clef_engraver" }      
                     \context { 
                          \Score 
                          \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1/2) %squeeze notes a bit
                        }
        }
        
        \header {
          %piece = "Abbreviations Used"
        }
}
%}
