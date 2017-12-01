\version "2.19"

\include "bagpipe.ly" 
\include "/home/ben/workspace/GitLab/Atlanta_Pipe_Band_Tunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitLab/Atlanta_Pipe_Band_Tunes/include/score_settings.ly"

filename = "~/2018_GR4_MSR_Voices.ly"
tunesetVersion = "Version 1"
source = "APB"



#(define-bar-line "|.-b" "|." ".|" "|.") %This is for putting all parts in one score!
%  #(define-bar-line ":|.-b" ":|." ".|:" ":|.") %This is for putting all parts in one score!
#(define-bar-line ":|.-.|" ":|." ".|" "|." )    
\defineBarLine "|.-.|:" #'("|." ".|:" "" ) %This rocks! This ends a repeated part and starts a non-repeated part.
\defineBarLine ":|.-.|:" #'(":|." ".|:" "" ) %This rocks! This ends a repeated part and starts a repeated part.
\defineBarLine "|-.b"   #'("|" ".|" "|.")



\header { 
          title = "APB Grade 4 2017 MSR set"
          composer = ""
          arranger = ""
          meter = "" 
          tagline = \markup { \filename  "  " \source "  "
          Engraved at
          \simple #(strftime "%d - %b - %Y - %H%M  " (localtime (current-time)))
         % with \with-url #"http://lilypond.org/"
         % \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
        }    
}




\paper {
	#(set-paper-size "letter" 'landscape)
}

voltaTwoFour = \markup { \text \italic {2nd time 4th part} } 
voltaTwoTwo = \markup { \text \italic {2nd time 2nd part} }



% ********** Marches *************

AthollBreadalbaneGathering = 
{

\time 2/4
%\bar ".|:"
\repeat volta 2 {
                  \set Timing.measurePosition = #(ly:make-moment -1 8 ) \grg a16. [ b32 ] |
                  \grip c4  \grg c32 [ e16. \dbld d16. b32 ] |
                  \dblc c8 [ \gre a8 ] \wbirl a8 [  \grg c32 e16. ] |
                  \dblf f8~[f16. e32 ] \dblc c8 [ A16. e32] |
                  \dblc c8 [ \grg b8 ] \taor b8 [ \grg a16.  b32 ] |
                  \break
                  \grip c4  \grg c32 [ e16. \dbld d16. b32 ] |
                  \dblc c8 [ \gre a8 ] \wbirl a8 [  \grg c32 e16. ] |
                  \grg f8 [ \dblA A8 ]  e16. [ f32 \grg e16. c32 ] |
                  \set Timing.measurePosition = #(ly:make-moment 1 8 ) \dblb b8 [ \gre a8 ] \wbirl a8 |
                  \break
                }
\repeat volta 2 {
                  \set Timing.measurePosition = #(ly:make-moment -1 8 ) \grg c16. [ d32 ] |
                  \grg e8~[e16. f32 ]  \dble e8 [ \grg c8 ] |
                  \dblA A8~[A16. e32 ] \grg f16. [ g32 A16. f32 ] |
                  \dble e8 [ \grg a16. \grd c32 ] \grg e16. [f32 \grg e16. a32 ] |
                  \dblc c8 [ \grg b8 ] \taor b8 [ \grg c16.  d32 ] |
                  \break
                  \grg e8~[e16. f32 ]  \dble e8 [ \grg c8 ] |
                  \dblA A8~[A16. e32 ] \grg f16. [ g32 A16. f32 ] |
                  \dble e8 [ \grg a16. \grd c32 ] \grg e16. [f32 \grg e16. c32 ] |
                  \set Timing.measurePosition = #(ly:make-moment 1 8 ) \dblb b8 [ \gre a8 ] \wbirl a8 |
                  \break
                }
\repeat volta 2 {
                  \set Timing.measurePosition = #(ly:make-moment -1 8 ) \grg a16. [ b32 ] | 
                  \grip c4 \dblc c8 [ e8 ] |
                  \grg f8 [ A16. f32 ] \dble e16. [ c32 \grg a16. b32 ] |
                  \dblc c8 [ \grg a16. \grd c32 ] \grg e16. [f32 \grg a16. b32 ] |
                  \dblc c8 [ \grg b8 ] \taor b8 [ \grg a16.  b32 ] |
                  \break
                  \grip c4 \dblc c8 [ e8 ] |
                  \grg f8 [ A16. f32 ] \dble e16. [ c32 \grg a16. b32 ] |
                  \dblc c8 [ \grg a16. \grd c32 ] e16. [ f32 \grg e16. c32 ] |
                  \set Timing.measurePosition = #(ly:make-moment 1 8 ) \dblb b8 [ \gre a8 ] \wbirl a8 |
                  \break
                }
\repeat volta 2 {
                  \set Timing.measurePosition = #(ly:make-moment -1 8 ) \grg c16. [ d32 ] | 
                  \dble e8 [ A16. e32 ] \grg f16. [ g32 A16. f32 ] |
                  \dble e8 [ A16. f32 ] \dble e16. [ c32 \grg a16. b32 ] |
                  \dblc c8 [ \grg a16. \grd c32 ] \grg e16. [f32 A16. e32 ] |
                  \dblc c8 [ \grg b8 ] \taor b8 [ \grg c16.  d32 ] |
                  \break
                  \dble e8 [ A16. e32 ] \grg f16. [ g32 A16. f32 ] |
                  \dble e8 [ A16. f32 ] \dble e16. [ c32 \grg a16. b32 ] |
                  \dblc c8 [ \grg a16. \grd c32 ]\grg e16. [f32 \grg e16. c32 ] |
                  \set Timing.measurePosition = #(ly:make-moment 1 8 ) \dblb b8 [ \gre a8 ] \wbirl a8 |
                  \break
                } 
}



DuncanMcInnes = 
{

  \time 2/4 
  \repeat volta 2 { \bar ".|:"
                    \set Timing.measurePosition = #(ly:make-moment -1 8 ) e8 |
                    \grg a8. [ b16 ] \grg c8 [ \thrwd d8 ] |
                    \grg e8. [ f16 ] \dblc c8 [ \gre a8 ] |
                    \dblc c8 [ e8 ] \grg a8 [ \grd c8 ] |
                    \dble e8. [ d16 ] \dblb b8 [ \gre G8 ]|
                    \break
                    %\set Score.repeatCommands = #'((volta "2nd time 2nd part") ) 
                   % \set Score.repeatCommands = #(list(list 'volta voltaTwoTwo) 'start-repeat)
                    \grg a8. [ b16 ] \grg c8 [ \thrwd d8 ] |
                    \grg e8. [ f16 ] \dblc c8 [ e8 ] |
                    \thrwd d8 [ \gre G8 ] \dble e8. [ d16 ] |
                    \set Timing.measurePosition = #(ly:make-moment 1 8 )  \dblb b8 [ \gre a8 ] \wbirl a8 | \bar ":|.-.|:"
                   % \set Score.repeatCommands = #'((volta #f))
                    \break
                  }
  \repeat volta 2 { \set Timing.measurePosition = #(ly:make-moment -1 8 ) b8 | 
                    \grg a8. [ A16 ] \grg A8 [ e8 ] |
                    \hdblg g8. [ A16 ] \grf g8 [ \grA e8 ] |
                    \dblc c8 [ \gre a8 ] \dblc c8 [ g8 ] |
                    \hdble e8. [ d16 ]  \dblb b8 [ \gre G8 ] |
                    \break
                    \set Score.repeatCommands = #'((volta "1") ) 
                    \grg a8. [ A16 ] \grg A8 [ e8 ] |
                    \hdblg g8. [ A16 ] \grf g8 [ \grA e8 ] |
                    \thrwd d8 [ \gre G8 ] \dble e8. [ d16 ] |                    
                    \set Timing.measurePosition = #(ly:make-moment 1 8 )  \dblb b8 [ \gre a8 ] \wbirl a8 | \bar ":|."
                    \set Score.repeatCommands = #'((volta #f))
                    \break
                  }
     \alternative {
                     {
                       \set Score.repeatCommands = #'((volta "2") ) 
                       \grg a8. [ b16 ] \grg c8 [ \thrwd d8 ] |
                       \grg e8. [ f16 ] \dblc c8 [ e8 ] |
                       \thrwd d8 [ \gre G8 ] \dble e8. [ d16 ] |
                       \set Timing.measurePosition = #(ly:make-moment 1 8 )  \dblb b8 [ \gre a8 ] \wbirl a8 | %\bar ":|.-.|:"
                       \set Score.repeatCommands = #'((volta #f))
                       \break
                     }
                  }
  \repeat volta 2 { \set Timing.measurePosition = #(ly:make-moment -1 8 ) \grg e16. [ d32] |
                    \dbld d16 [ c8. ]  \grg a8 [ \grd c8 ] |
                    \grg e8. [f16] \dblc c8 [ \gre a8 ] |
                    \dble e4 \grg a8 [ \thrwd d8 ] |
                    \dblc c4 \dblb b8 [ \gre G8 ] |
                    \break                    
                    %\set Score.repeatCommands = #'((volta "1") ) 
                    %\set Score.repeatCommands = #(list(list 'volta voltaTwoFour) 'start-repeat)
                    \dbld d16 [ c8. ]  \grg a8 [ \grd c8 ] |
                    \grg e8. [f16] \dblc c8 [ e8 ] |
                    \thrwd d8 [ \gre G8 ] \dble e8. [ d16 ] |
                    \set Timing.measurePosition = #(ly:make-moment 1 8 )  \dblb b8 [ \gre a8 ] \wbirl a8 | \bar ":|.-.|:"
                    %\set Score.repeatCommands = #'((volta #f))
                    \break
                  }
  \repeat volta 2 { \set Timing.measurePosition = #(ly:make-moment -1 8 ) \grg c16. [ d32] |
                    \dble e8 [ c8 ]  \dblA A8. [ g16 ] |
                    \grA f8. [ e16 ]  \dblc c8 [ \gre a8 ] |
                    \dble e4 \grg a8 [ \thrwd d8 ] |
                    \dblc c4 \dblb b8 [ \gre G8 ] |
                    \break
                    \set Score.repeatCommands = #'((volta "1") ) 
                    \dble e8 [ c8 ]  \dblA A8. [ g16 ] |
                    \grA f8. [ e16 ]  \dblc c8 [ e8 ] |
                    \thrwd d8 [ \gre G8 ] \dble e8. [ d16 ] |
                    \set Timing.measurePosition = #(ly:make-moment 1 8 )  \dblb b8 [ \gre a8 ] \wbirl a8 | \bar ":|."
                    \set Score.repeatCommands = #'((volta #f))
                    \break
                  }
     \alternative {
                    {
                      \set Score.repeatCommands = #'((volta "2") ) 
                      \dbld d16 [ c8. ]  \grg a8 [ \grd c8 ] |
                      \grg e8. [f16] \dblc c8 [ e8 ] |
                      \thrwd d8 [ \gre G8 ] \dble e8. [ d16 ] |
                      \set Timing.measurePosition = #(ly:make-moment 1 8 )  \dblb b8 [ \gre a8 ] \wbirl a8 | %\bar ":|.-.|:"
                      \set Score.repeatCommands = #'((volta #f))
                    }    
                 }
}


DuncanMcInnesVTwo = 
{

  \time 2/4 
  \repeat volta 2 { \bar ".|:"
                    \set Timing.measurePosition = #(ly:make-moment -1 8 ) e8 |
                    \grg a8. [ b16 ] \grg c8 [ \thrwd d8 ] |
                    \grg e8. [ f16 ] \dblc c8 [ \gre a8 ] |
                    \dblc c8 [ e8 ] \grg a8 [ \grd c8 ] |
                    \dble e8. [ d16 ] \dblb b8 [ \gre G8 ]|
                    \break
                    %\set Score.repeatCommands = #'((volta "2nd time 2nd part") ) 
                    \set Score.repeatCommands = #(list(list 'volta voltaTwoTwo) 'start-repeat)
                    \grg a8. [ b16 ] \grg c8 [ \thrwd d8 ] |
                    \grg e8. [ f16 ] \dblc c8 [ e8 ] |
                    \thrwd d8 [ \gre G8 ] \dble e8. [ d16 ] |
                    \set Timing.measurePosition = #(ly:make-moment 1 8 )  \dblb b8 [ \gre a8 ] \wbirl a8 | \bar ":|.-.|:"
                    \set Score.repeatCommands = #'((volta #f))
                    \break
                  }
  \repeat volta 2 { \set Timing.measurePosition = #(ly:make-moment -1 8 ) b8 | 
                    \grg a8. [ A16 ] \grg A8 [ e8 ] |
                    \hdblg g8. [ A16 ] \grg g8 [ \grA e8 ] |
                    \dblc c8 [ \gre a8 ] \dblc c8 [ g8 ] |
                    \hdble e8. [ d16 ]  \dblb b8 [ \gre G8 ] |
                    \break
                    \set Score.repeatCommands = #'((volta "1") ) 
                    \grg a8. [ A16 ] \grg A8 [ e8 ] |
                    \hdblg g8. [ A16 ] \grg g8 [ \grA e8 ] |
                    \thrwd d8 [ \gre G8 ] \dble e8. [ d16 ] |                    
                    \set Timing.measurePosition = #(ly:make-moment 1 8 )  \dblb b8 [ \gre a8 ] \wbirl a8 | \bar ":|.-.|:"
                    \set Score.repeatCommands = #'((volta #f))
                    \break
                  }
  \repeat volta 2 { \set Timing.measurePosition = #(ly:make-moment -1 8 ) \grg e16. [ d32] |
                    \dbld d16 [ c8. ]  \grg a8 [ \grd c8 ] |
                    \grg e8. [f16] \dblc c8 [ \gre a8 ] |
                    \dble e4 \grg a8 [ \thrwd d8 ] |
                    \dblc c4 \dblb b8 [ \gre G8 ] |
                    \break                    
                    %\set Score.repeatCommands = #'((volta "2nd time 4th part") ) 
                    \set Score.repeatCommands = #(list(list 'volta voltaTwoFour) 'start-repeat)
                    \dbld d16 [ c8. ]  \grg a8 [ \grd c8 ] |
                    \grg e8. [f16] \dblc c8 [ e8 ] |
                    \thrwd d8 [ \gre G8 ] \dble e8. [ d16 ] |
                    \set Timing.measurePosition = #(ly:make-moment 1 8 )  \dblb b8 [ \gre a8 ] \wbirl a8 | \bar ":|.-.|:"
                    \set Score.repeatCommands = #'((volta #f))
                    \break
                  }
  \repeat volta 2 { \set Timing.measurePosition = #(ly:make-moment -1 8 ) \grg c16. [ d32] |
                    \dble e8 [ c8 ]  \dblA A8. [ g16 ] |
                    \hdblf f8 [ e8 ]  \dblc c8 [ \gre a8 ] |
                    \dble e4 \grg a8 [ \thrwd d8 ] |
                    \dblc c4 \dblb b8 [ \gre G8 ] |
                    \break
                    \set Score.repeatCommands = #'((volta "1") ) 
                    \dble e8 [ c8 ]  \dblA A8. [ g16 ] |
                    \hdblf f8 [ e8 ]  \dblc c8 [ e8 ] |
                    \thrwd d8 [ \gre G8 ] \dble e8. [ d16 ] |
                    \set Timing.measurePosition = #(ly:make-moment 1 8 )  \dblb b8 [ \gre a8 ] \wbirl a8 | \bar ":|."
                    \set Score.repeatCommands = #'((volta #f))
                    \break
                  }
                                  
                  
}



MuirOfOrd = 
{
  \time 2/4
  \bar ".|:"
  \repeat volta 2 {
                   \set Timing.measurePosition = #(ly:make-moment -1 8)   \hdblg g8 |
                   \dble e8. [ d16 ] \dblb b8 [ a8] |
                   \grg G8. [ a16 ] \grg b8 [ \thrwd d8] |
                   \dble e8. [ d16] \dblb b8 [ \gre G8 ] |
                   \grg a4 \wbirl a8 [ \hdblg g8 ] | 
                   \break
                   \tdble e8. [ d16 ] \dblb b8 [ a8] |
                   \grg G8. [ a16 ] \grg b8 [ A8] |
                   \grf g16. [ f32 \grg e16. d32 ] \grg b8 [ \thrwd d8 ] |
                   \set Timing.measurePosition = #(ly:make-moment 1 8)  \dble e4 \gra e8 |                                   
                   \break
                 }            
 \repeat volta 2 {                   
                  \set Timing.measurePosition = #(ly:make-moment -1 8) f8 |
                  \hdblg g8 [ A8 ] \grf g8 [ \grA f16. d32 ] |
                  \dble e4 \gra e8 [ g8 ] |
                  \grA f16 [ A8. ]  \hdblf f8. [ e16 ] |
                  \thrwd d4 \dbld d8 [ f8 ] |
                  \break
                  \hdblg g8 [ A8 ] \grf g8 [ \grA f16. d32 ] |
                  \grg e8 [ A8 ]  \grg A8. [ f16 ] |
                  \grA g16. [ f32 \grg e16. d32 ] \grg b8 [ \thrwd d8 ] |
                  \set Timing.measurePosition = #(ly:make-moment 1 8)  \dble e4 \gra e8 |     
                  \break                   
                 }
 \repeat volta 2 {                   
                  \set Timing.measurePosition = #(ly:make-moment -1 8) \hdblg g8 |
                  \hdblb b8. [ a16 ] \grg G8 [ \Gthrwd d8 ] |
                  \grg b8 [ \thrwd d8 ] \grg e8 [ \hdblg g8 ] |
                  \hdblb b8. [ a16 ] \dblb b8 [ \gre G8 ] | 
                  \grg a4 \wbirl a8 [ \hdblg g8 ] |
                  \break
                  \hdblb b8. [ a16 ] \grg G8 [ \Gthrwd d8 ] |
                  \grg b8 [ \thrwd d8 ] \grg e8 [ A8 ] |
                  \grf g16. [ f32 \grg e16. d32 ] \grg b8 [ \thrwd d8 ] |
                  \set Timing.measurePosition = #(ly:make-moment 1 8)  \dble e4 \gra e8 |                                   
                  \break                                    
                 }
 \repeat volta 2 {                   
                  \set Timing.measurePosition = #(ly:make-moment -1 8) f8 |
                  \hdblg g8 [ e8 ] \gra e16. [ g32 \grA f16. d32 ] |
                  \dble e4 \gra e8 [ g8 ] |
                  \hdblf f8 [ d8 ] \grc d16. [ e32 \grg d16. b32 ]|
                  \thrwd d4 \dbld d8 [ f8 ] |
                  \break
                  \hdblg g8 [ e8 ] \gra e16. [ g32 \grA f16. d32 ] |
                  \grg e8. [ f16 ] \hdblg g8 [ A8 ] |                
                  \grf g16. [ f32 \grg e16. d32 ] \grg b8 [ \thrwd d8 ] |
                  \set Timing.measurePosition = #(ly:make-moment 1 8)  \dble e4 \gra e8 |                                   
                  \break                                    
                 }
                 
}


% ********** Strathspeys *************

AspenBanks =
{
\time 4/4
\defaultTimeSignature
\bar ".|"
\thrwd d4 \grg c8. [ d16 ] \grg b16 [ d8. ]  \grg a8. [ b16 ] |
\thrwd d4  \grg f8. [ d16 ]  A8. [ d16 ]  \grg f8. [ e16 ] |
\thrwd d8. [ e16 ] \grg f8. [ d16 ]  \grg b16 [ d8. ]  \grg a8. [ d16 ] |
\dble e8. [ d16 ]  \grg  f16 [ e16 d8 ] \grg c16 [ e8. ] \gra e8. [ f16] |
\break
\thrwd d4 \grg c8. [ d16 ] \grg b16 [ d8. ]  \grg a8. [ b16 ] |
\thrwd d4  \grg f8. [ d16 ]  A8. [ d16 ]  \grg f8. [ e16 ] |
\thrwd d8. [ e16 ] \grg f8. [ d16 ]  \grg b16 [ d8. ]  \grg a8. [ d16 ] |
\grg f16 [ A8. ]  g16 [ f16 e8 ] \grg f8. [ e16 ] \thrwd d8. [f16 ] |
\bar "|.-b"
\break
\dblA A4 f16 [ A8. ]  \thrwd d8. [ A16 ]  f16 [ A8. ] |
\grf g8. [ e16 ] \grg f8. [ d16 ]  \dble e8. [ d16] \grg f8. [ d16 ] | 
\dblA A4 f16 [ A8. ]  \thrwd d8. [ A16 ]  f16 [ A8. ] |
\grg g8. [ e16 ] f16 [ e16 d8 ] \grg c16 [ e8. ] \gra e8. [ f16] |
\break
\dblA A4 f16 [ A8. ]  \thrwd d8. [ A16 ]  f16 [ A8. ] |
\grf g8. [ e16 ] \grg f8. [ d16 ]  \dble e8. [ d16] \grg f8. [ d16 ] | 
\grg b4 \taor b8. [ d16 ]  \grg a8. [ b16 ]  \grg f8. [ d16] |
\grg f16 [ A8. ] g16 [ f16 e8 ] \grg f8. [ e16 ] \thrwd d4 |
\bar "|.-b"
\break
}


Craig-a-Bodich = 
{
  \time 4/4
  \bar ".|:"
  \repeat volta 2 {                   
                   \grg a4 \taor a8. [ \grd b16 ] \grg G8. [ a16 ] \grg b16 e8. ] |
                   \grg a4 \taor a8. [ \grd b16 ]  \dble e8. [ d16 ]  \grg e16 [ g8. ] |
                   \hdble e8. [ d16 ] \dblb b8. [ a16] \grg G8. [ a16 ] \grg b16 [ d8. ] |
                   g16 [ \grA e8. ] \gra e16 [ g8. ] \grA b16 [ d8. ] \dble e4 | \bar ":|.-.|"
                   \break
                 }
                 {                   
                   \gra e8. [ f16 ] \hdblg g8. [ e16 ] A8. [ g16 ] \grA e16 [ g8. ] |
                   \thrwd d8. [ e16 ] \dbld d8. [ b16 ] \grg G8. [ a16 ] \grg b16 [ d8. ] |
                   \grA e8. [ f16 ] \hdblg g8. [ e16 ] A8. [ g16 ] \grA e16 [ A8. ] |
                   g16 [ \grA e8. ] \gra e16 [ g8. ] \grA b16 [ d8. ] \dble e4 |                  
                   \break
                   \gra e8. [ f16 ] \hdblg g8. [ e16 ] A8. [ g16 ] \grA e16 [ g8. ] |
                   \hdble e8. [ d16 ] \dblb b8. [ a16] \grg G8. [ a16 ] \grg b16 [ d8. ] |
                   \grg a4 \taor a8. [ \grd b16 ] \grg G8. [ a16 ] \grg b16 e8. ] |
                   g16 [ \grA e8. ] \gra e16 [ g8. ] \grA b16 [ d8. ] \dble e4 | \bar "|."
                   \break                   
                 }
}

MollyConnell = 
{
\time 4/4
\defaultTimeSignature

\repeat volta 2 {   
                  \bar ".|:"
                  \dblc c4 \gre a8. [ \grd c16 ]  \grg e8.  [ f16 ] \dblA A8. [ e16 ] |
                  \grg f16 [ A8. ]  f16 [ e16 c8 ] \grg e8. [ c16 ]  \dblb b4 |
                  \dblc c4 \gre a8. [ \grd c16 ]  \grg e8.  [ f16 ] \dblA A8. [ e16 ] |
                  \grg f16 [ e16 c8 ] \grg e8. [ c16 ] \dblb b4 \grG a4 | \bar ":|.-.|"
                  \break
                }
                {
                  \dblA A4 e16 [ A8. ]  f16 [ e16 c8 ] \grg e4 |
                  \grg c16 [ e8. ]  \gra e8. [ f16 ]  \grg e8. [ c16 ]  \dblb b4 |
                  \dblA A4 e16 [ A8. ] f16 [ e16 c8 ]  \grg e4 |
                  \grg f8. [ e16 ] \gra e8. [ c16 ] \dblb b4 \grG a4 |
                  \break
                  \dblA A4 e16 [ A8. ]  f16 [ e16 c8 ] \grg e4 |
                  \grg c16 [ e8. ]  \gra e8. [ f16 ]  \grg e8. [ c16 ]  \dblb b4 |
                  \dblc c4 \gre a8. [ \grd c16 ]  \grg e8.  [ f16 ] \dblA A8. [ e16 ] |
                  \grg f16 [ e16 c8 ]  \grg e8. [ c16 ] \dblb b4 \grG a4 |\bar "|.-b"
                  \break  
                }
}


% ********** Reels *************


Kalabakan = 
{
  \reelTime
  \repeat volta 2 {   
                  \bar ".|:"
                  \set Timing.measurePosition = #(ly:make-moment -1 16 ) a16 | 
                  \thrwd d4 \gre a8. [ d16 ] \grg b16 [ \grd a8.  \grg b16 d8. ] |
                  \grg a16 [ \grd a8. \grg b16 d8. ]  \grg f8. [ e16 \gra e8. f16 ] |
                  \thrwd d4 \gre a8. [ d16 ] \grg b16 [ \grd a8.  \grg b16 d8. ] |
                  \grg a16 [ \grd a8. \grg f8. e16] \thrwd d4 
                 }
  \alternative {
                 {
                   \set Timing.measurePosition = #(ly:make-moment 13 16 ) \grg d8. |
                 }
                 {
                  \grg d8. [f16] | \bar  "|-.b"
                  \break
                 }
  }                
                {
                  %\set Timing.measurePosition = #(ly:make-moment -1 16 ) f16 |                
                  \dblA A4 f8. [A16] \grg A4 f16 [  A8. ] |
                  \birl a4 \grg b16 [ d8. ]  \grg f8. [ e16 \gra e8. f16 ] |
                  \dblA A4 f8. [A16] \grg A4 f16 [  A8. ] |  
                  \birl a4 \grg f8. [ e16 ]  \thrwd d4 \grg d8. [ f16 ] |
                  \break
                  \dblA A4 f8. [A16] \grg A4 f16 [  A8. ] |
                  \birl a4 \grg b16 [ d8. ]  \grg f8. [ e16 \gra e8. f16 ] |
                  \thrwd d4 \gre a8. [ d16 ] \grg b16 [ \grd a8.  \grg b16 d8. ] |
                  \set Timing.measurePosition = #(ly:make-moment 1 16 ) \grg a16 [ \grd a8. \grg f8. e16] \thrwd d4 \grg d8. | \bar "|."
                  \break  
                }
}


SleepyMaggie_Pointed =
{
\reelTime
\defaultTimeSignature
\bar ".|:"
\repeat volta 2 {
                  \dble e4 \grg a8. [ A16 ] e8. [ d16 \grg b16 d8. ] |
                  \dble e4 \hdblg g4  \grA b16 [ \grd G8. \grg b16 d8. ] |
                  \dble e4 \grg a8. [ A16 ] e8. [ d16 \grg b16 d8. ] |
                  \grg e8. [ f16 \grA g8. e16 ] \grg d8. [ G16 \grg b16 d8. ] |
                  \break
                }
\repeat volta 2 {
                  \grg e8. [ a16 \grg a16 \grd a8.] \grg e8. [ a16 \grg b16 d8. ] |
                  \grg e8. [ a16 \grg a16 \grd a8.] \grg b16 [ \grd G8. \grg b16 d8.] |
                  \grg e8. [ a16 \grg a16 \grd a8.] \grg e8. [ a16 \grg b16 d8. ] | 
                  \grg e8. [ f16 \grA g8. e16 ] \grg d8. [ G16 \grg b16 d8. ] | 
                  \break
               }
}

HighRoadLinton = 
{
\reelTime
\defaultTimeSignature
\bar ".|:"
\repeat volta 2 {
                  \grg c8. [ e16 \gra e8. f16 ] \dblA A4~A8. [ e16] |
                  \hdblg g4 f16 [ e8. ]  \dblA A4 c16 [ \grd a8. ] |
                  \grg c8. [ e16 \gra e8. f16 ] \dblA A4~A8. [ e16] |
                  \grg f16 [ A8.  e8. c16 ]  \dblb b4 \grG a4 |
                  \break
                }
                \repeat volta 2 {
                  \grg c8. [ e16 \gra e8. g16 ]  \grA f8. [ d16 \grc d8. f16 ] |
                  \grg e8. [ c16 \grG c8. e16 ]  \grg f8.  [ b16 \grG b8. d16 ] |
                  \grg c8. [ e16 \gra e8. g16 ]  \grA f8. [ d16 \grc d8. f16 ] |
                  \dble e8. [ c16 A8. c16 ]  \dblb b4 \grG a4 |
                  \break
                }
}


