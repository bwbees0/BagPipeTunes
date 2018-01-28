\version "2.19.80"

\include "bagpipe.ly" 

\include "/home/ben/workspace/GitLab/Atlanta_Pipe_Band_Tunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitLab/Atlanta_Pipe_Band_Tunes/include/score_settings.ly"

filename = "~/Grade_4_TuneUp_MSR_Voices.ly"
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






LibertonPipeBand = 
{
 \time 2/4
 \repeat volta 2 {
                  \set Timing.measurePosition = #(ly:make-moment -1 8 ) e8 |
                  \bar ".|:"
                  \grg a8 [\grd b16. a32 ] \grg G8 \grd a8 |
                  \thrwd d8 [ \gre  a8 ] \grg f4 |
                  \dblf f8 [\grg e16. f32 ] \hdblg g8 e8 |
                  \dbld d16. [ c32 \grg d16. e32 ] \grg f8 [ A8]  |	      
                  \break
                   a8 [\grd b16. a32 ] \grg G8 \grd a8 |
                  \thrwd d8 [ \gre  a8 ] \grg f4 |
                  \dblf f8 [\grg e16. f32 ] \hdblg g8 c8 |
                  \dble e8 d8 \gdcdbl d4 |
                  \break	
		} 
 \repeat volta 2 {
	          \grg e8 [ \grg f16. e32 ] \dblc c8 e8 |
	          \hdblA A8 c8 \dble e4 |
	          \grg e8 [ \grg f16. e32 ] \thrwd d8 \gre b8 | 
	          \dblf f8 e8 \dblc c4 |
	          \break
	          \grg e8 [ \grg f16. e32 ] \dblc c8 e8 |
	          \hdblA A8 c8 \dble e4 |
	          \grg e8 [ \grg f16. e32 ] \thrwd d8 \gre b8 | 
	          \dblb b8 [\gre a8 ] \wbirl a4 |
                 } 
}


LibertonPipeBandHarmony = 
{
\time 2/4
% first part harmony
\repeat volta 2 {
                  \set Timing.measurePosition = #(ly:make-moment -1 8 ) e8 |
                  \grg c8 [ \grg d16 c16 ] \grg b8 [ \grd c8 ] |
                  \dblf f8 [ d8 ]  \slurd d4 |
                  \dbld d8 [ c16 d16 ] \dble e8 [ \gre c8 ] |
                  \dblf f16 [ e16 \grg f16 c16 ]  \thrwd d8 [ f8 ] |
                  \break
                  \grg c8 [ \grg d16 c16 ] \grg b8 [ \grd c8 ] |
                  \dblf f8 [ d8 ]  \slurd d4 |
                  \dbld d8 [ c16 d16 ] \dble e8 [ \grg a8 ] | 
                  %\set Timing.measurePosition = #(ly:make-moment 1 8 ) \hdblg g8 [ f8 ]  \grip f8 |
                  \hdblg g8 [ f8 ]  \grip f4 |                  
                  \break                
                }
% second part harmony
\repeat volta 2 {
                  %\set Timing.measurePosition = #(ly:make-moment -1 8 ) e8 |
                  \grg c8 [ \grg d16 c16 ]  \grG a8 [ \grd c8 ] |
                  \dblf f8 [ e8 ]  \grg c4 |
                  \grg c8 [  \dbld d16 c16 ]  \dblb b8 [ \gre G8 ] |
                  \whslurd d8 [ c8 ]  \grg a8 [ e8 ] |
                  \break
                  \grg c8 [ \grg d16 c16 ]  \grG a8 [ \grd c8 ] |
                  \dblf f8 [ e8 ]  \grg c4 |
                  \grg c8 [  \dbld d16 c16 ]  \dblb b8 [ \gre G8 ] |
                  %\set Timing.measurePosition = #(ly:make-moment 1 8 ) \whslurd d8 [ c8 ] \grip c8 |
                  \whslurd d8 [ c8 ] \grip c4 |
                  
                  \break                   
                }
% third part harmony
%{
 \repeat volta 2 {
                  %\set Timing.measurePosition = #(ly:make-moment -1 8 ) e8 |
                  \grg c8 [ \gre a8 ] \wbirl a8 [ c8 ] |
                  \grip c8 [ \dbld d16 c16 ] \grG a4 |
                  \grg c8 [  \dbld d16 c16 ]  \dblb b8 [ \gre G8 ] |
                  \whslurd d8 [ c8 ]  \grip a4 |                  
                  \break
                  \grg c8 [ \gre a8 ] \wbirl a8 [ c8 ] |
                  \grip c8 [ \dbld d16 c16 ] \grG a4 |
                  \grg c8 [  \dbld d16 c16 ]  \dblb b8 [ \gre G8 ] |
                  \set Timing.measurePosition = #(ly:make-moment 1 8 ) \whslurd d8 [ c8 ]  \grip c8 |
                  \break                   
                }               
% fourth part harmony
 \repeat volta 2 {
                  %\set Timing.measurePosition = #(ly:make-moment -1 8 ) f8 |
                  \dblf f8 [ d8 ]  \slurd d8 [ f8 ] |
                  \dblc c8 [ \dbld d16 c16 ] \grG a4 |
                  \grg a8 [ \dbld d16 c16 ] \dblb b8 [ \gre G8 ] 
                  \whslurd d8 [ c8 ] \grip a4 |
                  \break
                  \dblf f8 [ d8 ]  \slurd d8 [ f8 ] |
                  \dblc c8 [ \dbld d16 c16 ] \grG a4 |
                  \grg c8 [ \dbld d16 c16 ] \dblb b8 [ \gre G8 ] |
                  \set Timing.measurePosition = #(ly:make-moment 1 8 ) \whslurd d8 [ c8 ] \grip c8 |
                  \break                   
                } 
%}
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
                  \grg c8. [ e16 \gra e8. g16 ]  \grA f8. [ d16 \grc d8. f16 ] |
                  \grg e8. [ c16 \grG c8. e16 ]  \grg f8.  [ b16 \grG b8. d16 ] |
                  \grg c8. [ e16 \gra e8. g16 ]  \grA f8. [ d16 \grc d8. f16 ] |
                  \dble e8. [ c16 A8. c16 ]  \dblb b4 \grG a4 | 
                  \break
                  }
}

HighRoadLinton_Harmony = 
{
\reelTime
\defaultTimeSignature
\repeat volta 2 {
                  \grg c8.^\markup {Harmonies 2nd time only.} [ e16 \gra e8. f16 ] \dblA A4~A8. [ e16] |
                  \hdblg g4 f16 [ e8. ]  \dblA A4 c16 [ \grd a8. ] |
                  \grg c8. [ e16 \gra e8. f16 ] \dblA A4~A8. [ e16] |
                  \grg f16 [ A8.  e8. c16 ]  \dblb b4 \grG a4 |
                  \break
                  \grg c2 \grg d2 |
                  \grg c2 \grg b2 |
                  \grg a2 \grg d2 |
                  \grg a4 e4 \dbld d4 c4 |
                  \break                  
                }

}

HighRoadLinton_Thirds = 
{
\reelTime
\defaultTimeSignature
\repeat volta 2 {
                  \grg c8. [ e16 \gra e8. f16 ] \dblA A4~A8. [ e16] |
                  \hdblg g4 f16 [ e8. ]  \dblA A4 c16 [ \grd a8. ] |
                  \grg c8. [ e16 \gra e8. f16 ] \dblA A4~A8. [ e16] |
                  \grg f16 [ A8.  e8. c16 ]  \dblb b4 \grG a4 |
                  \break
                  \grg c2 \grg a2 |
                  \grg a2 \grg d2 |
                  \grg c2 \grg a2 |
                  \grg a4 e4 \dbld d4 c4 | 
                  \break                  
                }

}



SleepyMaggie_Round =
{
\reelTime
\defaultTimeSignature
\bar ".|:"
\repeat volta 2 {
                  \dble e4 \grg a8 [ A8 ] e8 [ d8 \grg b8 d8 ] |
                  \dble e4 \hdblg g4  \grA b8 [ G8 \grg b8 d8 ] |
                  \dble e4 \grg a8 [ A8 ] e8 [ d8 \grg b8 d8 ] |
                  \grg e8 [ f8 \grA g8 e8 ] \grg d8 [ G8 \grg b8 d8 ] |
                  \break
                }
\repeat volta 2 {
                  \grg e8 [ a8 \grg a8 \grd a8] \grg e8 [ a8 \grg b8 d8 ] |
                  \grg e8 [ a8 \grg a8 \grd a8] \grg b8 [ G8 \grg b8 d8] |
                  \grg e8 [ a8 \grg a8 \grd a8] \grg e8 [ a8 \grg b8 d8 ] | 
                  \grg e8 [ f8 \grA g8 e8 ] \grg d8 [ G8 \grg b8 d8 ] | 
                  \break
               }
}


SleepyMaggie-Pointed = 
{
\reelTime
\defaultTimeSignature
% \set Score.tempoHideNote = ##t
% \tempo 4 = 140
\bar ".|:"
\repeat volta 2 {
                  \dble e4 \grg a8. [ A16 ] e8. [ d16 \grg b16 d8. ] |
                  \dble e4 \hdblg g4  b16 [ \grd G8. \grg b16 d8. ] |
                  \dble e4 \grg a8. [ A16 ] e8. [ d16 \grg b16 d8. ] |
                  \grg e8. [ f16 \grA g8. e16 ] \grg d8. [ G16 \grg b16 d8. ] |
                  \break
                }
\repeat volta 2 {
                  \grg e8. [ a16 \grg a16 \grd a8.] \grg e8. [ a16 \grg b16 d8. ] |
                  \grg e8. [ a16 \grg a16 \grd a8.] \grg b16 [ G8. \grg b16 d8.] |
                  \grg e8. [ a16 \grg a16 \grd a8.] \grg e8. [ a16 \grg b16 d8. ] | 
                  \grg e8. [ f16 \grA g8. e16 ]  \grg d8. [ G16 \grg b16 d8. ] | \bar ":|.-.|"                
               }
  \alternative {                 
                 { \set Score.repeatCommands = #'((volta "2") ) 
                   \grg e8~e8~e8 s2 s8  | \break 
                   \set Score.repeatCommands = #'((volta #f))
                 }               
               }
}


SleepyMaggie-Pointed_Harmony = 
{
\reelTime
\defaultTimeSignature
% \set Score.tempoHideNote = ##t
% \tempo 4 = 140
%\bar ".|:"
\repeat volta 2 {
                  \dble e4^\markup {Harmonies 2nd time only.}  \grg a8. [ A16 ] e8. [ d16 \grg b16 d8. ] |
                  \dble e4 \hdblg g4 b16 [ \grd G8. \grg b16 d8. ] |
                  \dble e4 \grg a8. [ A16 ] e8. [ d16 \grg b16 d8. ] |
                  \grg e8. [ f16 \grA g8. e16 ] \grg d8. [ G16 \grg b16 d8. ] |
                  \break
                }
\repeat volta 2 {
                 \grg e2 \grg e4 g4 |
                 \grg e2 \grg d2 |
                 \grg e2 \grg e4 g4 |
                 \grA a4 \grg b4 \grg G2 |
                 | %\bar ":|.-.|"                
               }
  \alternative {                 
                 { \set Score.repeatCommands = #'((volta "2") ) 
                   \grg a8~a8~a8 s2 s8  | \break 
                   \set Score.repeatCommands = #'((volta #f))
                 }               
               }
}

