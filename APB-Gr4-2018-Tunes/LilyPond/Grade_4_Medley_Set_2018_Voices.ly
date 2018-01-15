\version "2.19.80"

\include "bagpipe.ly" 

\include "/home/ben/workspace/GitLab/Atlanta_Pipe_Band_Tunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitLab/Atlanta_Pipe_Band_Tunes/include/score_settings.ly"

filename = "~/Grade_4_Medley_Set_2018_Voices.ly"
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



QueenVictoriasJubilee = 
{
  \time 2/4
                   \set Timing.measurePosition = #(ly:make-moment -1 4 ) e4 |
  \bar ".|:"
  \repeat volta 2 { 
                   \grg a8 [ f8 ]  \grg f16. [ e32 \grg f32 A16. ] |
                   \grf g8 [ \grA b8]  \dble e8. [ d16] |
                   \dblc c8 [ e8 ]  \dblb b8. [ c16 ] |
                   \dblb b8 [ \gre a8 ] \grg f4 |
                   \break
                   \grg a8 [ f8 ]  \dblf f16. [ e32 \grg f32 A16. ] |
                   \grf g8 [ \grA b8]  \dble e8. [ d16] |
                   \dblc c8 [ A8 ] \grg A16. [ g32 \grA f16. e32 ] |
                   \thrwd d4 \wslurd d8. [ b16 ] | \bar ":|.-b"
                   \break
                 }
  \repeat volta 2 {                   
                   %\set Timing.measurePosition = #(ly:make-moment -1 8 ) b8 |
                   \grg a8 [ f8]  \dblf f16. [ e32 \grg d16. c32 ] |
                   \dblb b8 [ g8 ] \grA g16. [ f32 \grg e16. d32] |
                   \dblc c8 [ A8 ]  \grg A16. [ g32 \grA f16. e32 ] |
                   \grg d16. [ c32 \grg d16. e32 ] \grg f8. [ b16 ] |
                   \break
                   \grg a8 [ f8]  \dblf f16. [ e32 \grg d16. c32 ] |
                   \dblb b8 [ g8 ] \grA g16. [ f32 \grg e16. d32 ] |
                   \dblc c8 [ A8 ]  \grg A16. [ g32 \grA f16. e32 ] |
                   \thrwd d4 
                  }
 \alternative     {
                    {
                      \set Timing.measurePosition = #(ly:make-moment -1 4 )
                      \wslurd d8. [ b16 ] | \bar ":|.-b"   
                    }
                    {
                      \set Timing.measurePosition = #(ly:make-moment -1 4 ) \wslurd d4 ( |
                      \time 6/8 e4. \mark \markup { \italic {jig time}}  e4. ) | \break
                    }
                  }  
}

%{
{ \thrwd d8. | \bar ":|.-b"}
                   {  \override TextSpanner.bound-details.left.text = "jig time"
                     \thrwd  d8. ( \startTextSpan   |\time 6/8                                    
                      e4.  ) \stopTextSpan | \break } 

%}

FleeTheGlen = 
{
  \time 6/8
  \repeat volta 2 {
                    \bar ".|:"
                    \grg f8 [ b8 \grG b8 ] \grg b8 [ c8 d8 ] |
                    \grg c4 e8 \grg e8 [ c8 e8 ] |
                    \grg f8 [ b8 \grG b8 ] \grg b8 [ c8 d8 ] | 
                    \grg a4 \grd c8~c8 e4 |
                    \break
                    \grg f8 [ b8 \grG b8 ] \grg b8 [ c8 d8 ] |
                    \grg c4 e8 \grg e8 [ c8 e8 ] |
                    \grg d8 [ c8 b8 ] \grg b8 [ c8 d8 ] |
                    \grg c4 \gre b8~b4. | \bar ":|.-.|:"
                    \break
                    \grg f8 [ g8 f8 ] \grg f8 [ e8 d8 ] |
                    \grg e4 \gra e8~e8 [ d8 c8 ] |
                    \grg d8 [ e8 d8 ] \grg d8 [ c8 b8 ] |
                    \grg c4.~c8 [ d8 e8 ] |
                    \break
  }
  \alternative {        
    {
      \grg f8[ g8 f8 ]  \grg e4 c8 |
      \grg d8 [ e8 d8 ] \grg c4. |
      \grg d8 [ c8 b8 ] \grg b8 [ c8 d8 ] |
      \grg c4 \gre b8~b4.   | 
      \break
    }
   
    {
      \grg f4. \grg e4. |
      \grg d8 [ e8 d8 ] \grg c4. |
      \grg d8 [ c8 b8 ]  \grg b8 [ c8 d8 ] |
      \set Timing.measureLength = #(ly:make-moment 9/8)  \grg c4.~c4.~c4.^"break to Haunting" |
      \break
    } 
    %{
    {
     \compressFullBarRests
    r1*6/8 r1*6/8 r1*6/8 \grg c4 \gre b8 \grg c8 [ d8 e8 ] |
    \break
    }
    {
    \compressFullBarRests
    r1*6/8 r1*6/8 r1*6/8 \grg c4.~c8 [ d8 e8 ] |
    \break
    }
    %}
  }
 }


FleeTheGlen_Harmony = 
{
  \time 6/8
  \repeat volta 2 {
                    \grg f8 [ b8 \grG b8 ] \grg b8 [ c8 d8 ] |
                    \grg c4 e8 \grg e8 [ c8 e8 ] |
                    \grg f8 [ b8 \grG b8 ] \grg b8 [ c8 d8 ] | 
                    \grg a4 \grd c8~c8 e4 |
                    \break
                    \grg f8 [ b8 \grG b8 ] \grg b8 [ c8 d8 ] |
                    \grg c4 e8 \grg e8 [ c8 e8 ] |
                    \grg d8 [ c8 b8 ] \grg b8 [ c8 d8 ] |
                    \grg c4 \gre b8~b4. | 
                    \break
                    \grg d4.      \grg d8 [ c8 b8 ] |
                    \grg c4  \gra c8~  c8 [ b8 a8 ] |
                    \grg b4.      \grg b8 [ c8 d8 ] |
                    \grg e4.~          e8 [ b8 c8 ] |
                    \break
  }
  \alternative {
  {
                   \grg d4.  \grg c4. |
                   \grg b4.  \grg e4. |
                   \grg b8 [ a8 G8] \grg G8 [ a8 b8 ] |
                   \grg a4 \grg G8~G4. |
                   \break
  }
  {
                  \grg d4. \grg c4. |
                  \grg b4. \grg e4. |
                  \grg b8 [ a8 G8 ] \grg G8 [ a8 b8 ] |
                  \set Timing.measureLength = #(ly:make-moment 9/8)  \grg a4.~a4.~a4. |
                  \break
  }
}
}





Haunting = 
{
\time 6/4 
\bar ".|"
          \grg b2 \grg d8 [ f8 ] \dble e2  \dbld d8 [ c8 ] |
          \grg b4.  c8  \grg d8 [ e8 ] \dblc c2  \gre a4 |
          \grip b2  \grg d8 [ f8 ] \dble e2  \dbld d8 [ c8 ] |
          \thrwd d2 \grg c8 [ d8 ] \dble e2  \grg d8 [ e8 ] |
          \break
          \dblf f2  d8 [ \gre b8 ] \dble e2  c8 [ \gre a8 ] |
          \thrwd d4. e8 \dbld d8 [ b8 ] \dblc c2  b8 [ \gre a8 ] |
          \grip b2 \grg f8 [ d8 ] \dble e4.  d8  c8 [ \gre a8 ] |
          \grip b2 \grg a4 \grip b2. |\bar "|.-b"
          \break
}


Haunting_Harmony_Two = 
{
\time 6/4 
          \grg b2 \grg d8 [ f8 ] \dble e2  \dbld d8 [ c8 ] |
          \grg b4.  c8  \grg d8 [ e8 ] \dblc c2  \gre a4 |
          \grip b2  \grg d8 [ f8 ] \dble e2  \dbld d8 [ c8 ] |
          \thrwd d2 \grg c8 [ d8 ] \dble e2  \grg d8 [ e8 ] |
          \break
          \grip b2 f8 [ d8 ] \dbla a2 \grg e8 [ c8 ] |
          \grg G4. b8 \grg a8 [ G8 ]  \dbla a2 d8 [ c8 ] |
          \grg d2  A8 [ f8 ]  \grA g4. f8 e8 [ c8 ] |
          \grg f2 e4 f2. |
          \break
}

Haunting_Harmony_Three = 
{
\time 6/4 
          \grg b2 \grg d8 [ f8 ] \dble e2  \dbld d8 [ c8 ] |
          \grg b4.  c8  \grg d8 [ e8 ] \dblc c2  \gre a4 |
          \grip b2  \grg d8 [ f8 ] \dble e2  \dbld d8 [ c8 ] |
          \thrwd d2 \grg c8 [ d8 ] \dble e2  \grg d8 [ e8 ] |
          \break
          \grip b2 f8 [ d8 ] \dbla a2 \grg e8 [ c8 ] |
          \grg G4. b8 \grg a8 [ G8 ]  \dbla a2 f8 [ e8 ] |
          \grg G2  a4 \grg b2 a4 |
          \thrwd d2 c4 \thrwd d2. |
          \break
}



MaidsOfTheBlackGlen =
{  
\time 4/4
\defaultTimeSignature
\bar ".|:"
\repeat volta 2 { \grg a4 \taor a8. [ \grd b16 ] \grg a8. [ b16 ]  \thrwd d8. [ e16 ] |
                  \grg f8. [ a16 ] \dble e8. [ a16 ] \grg f8. [ d16 ] \grg b16 [ d8. ] |
                  \grg a4 \taor a8. [ \grd b16 ] \grg a8. [ b16 ] \thrwd d8. [ e16 ] |
                  \grg f8. [ d16 ] \dblA A8. [ f16 ] \dble e4  
               }
  \alternative {
                  { \thrwd d4 | \bar ":|.-.|" }
                  { \thrwd d8. [ e16 ]  | 
                    \break
                  }
               }
                \bar ".|"  
                %\set Timing.measurePosition = #(ly:make-moment -1 16 ) e16 |
                \grg f8. [ e16 ]  \thrwd d8. [ e16 ]  \grg f8. [ g16 ] \dblA A8. [ f16 ] |
                \dble e8. [ d16 ]  \grg b16 [ d8. ] \grg e8. [ f16 ] \dblg g8. [ e16 ] |
                \grg f8. [ e16 ]  \thrwd d8. [ e16 ]  \grg f8. [ g16 ] \dblA A8. [ f16 ] |  
                \dblg g8. [ e16 ] \dblA A8. [ f16 ] \dble e4 \thrwd d8. [ e16 ] |
                \break
                \grg f8. [ e16 ]  \thrwd d8. [ e16 ]  \grg f8. [ g16 ] \dblA A8. [ f16 ] |
                \dble e8. [ d16 ]  \grg b16 [ d8. ] \grg e8. [ f16 ] \dblg g8. [ e16 ] |
                \grg f16 [ A8. ]  \hdble e8. [ f16 ]  \thrwd d8. [ f16 ] \grg b16 [ d8. ] |
                \set Timing.measurePosition = #(ly:make-moment 0 16 ) \grg a8. [ d16 ]  \dblA A8. [ f16 ] \dble e4 \thrwd d4 |
                \bar "|.-b"
                \break
}

AleIsDearSG = 
{
  % Scots Guards vol 1
 \reelTime
 \bar ".|:"
 \repeat volta 2 {
                   \dblf f4 \grg e16 [f8.]  \slurb b4 \dblf f8. [ e16 ] |
                   \grg f16 [ A8. e16 A8. ] c16 [ \grd a8. \dble e8. c16 ] |
                   \dblf f4 \grg e16 [f8.]  \slurb b4 \dblf f8. [ e16 ] |
                   \grg f16 [ A8. e8. c16 ] \grg b8. [ \grd b16 \gre b8. \grd c16 ] | \bar ":|.-.|"
                 }
                 {
                  \grg b8. [ \grd b16 \gre b8. \grd c16 ] \dbld d8. [ b16 \grg c16 \grd a8. ] |
                  \grg a8. [ \grd a16 \gre a8. \grd b16 ]  \grg a8. [ b16 \grg c16 \grd a8. ] |                  
                  \grg b8. [ \grd b16 \gre b8. \grd c16 ] \dbld d8. [ b16 \grg c16 \grd a8. ] |
                  \thrwd d8. [ f16 \grg e8. c16 ] \grg b8. [ \grd b16 \gre b8. \grd c16 ]   |  
                  \break
                  \grg b8. [ \grd b16 \gre b8. \grd c16 ] \dbld d8. [ b16 \grg c16 \grd a8. ] |
                  \grg a8. [ \grd a16 \gre a8. \grd b16 ]  \grg a8. [ b16 \grg c16 \grd a8. ] |                  
                  \thrwd d4 \dblf f8. [ d16 ]  \grg c8. [ \grd c16 \gre c8. e16 ] |
                  \grg f16 [ A8. e8. c16 ] \grg b8. [ \grd b16 \gre b8. \grd c16 ] | 
                  \break                  
                 }
 
}
AleIsDearQOH = 
{
  % Caber Feidh -- Queen's Own Highlanders
  \reelTime
 \bar ".|:"
 \repeat volta 2 {
                   \dblf f4 \grg e8 [f8]  \slurb b4 \grg f8 [ e8 ] |
                   \grg f16 [ A8. e16 A8. ] c16 [ \grd a8. \grg e8. c16 ] |
                   \dblf f4 \grg e8 [f8]  \slurb b4 \dblf f8 [ e8 ] |
                   \grg f16 [ A8. e8. c16 ] \grg b8. [ \grd b16 \gre b8. \grd c16 ] | \bar ":|.-.|"
                 }
                 {
                  \grg b8. [ \grd b16 \gre b8. \grd c16 ] \thrwd d4 \dblc c8 [ b8 ] |
                  \grg a8. [ \grd a16 \gre a8. \grd b16 ] \grg a8. [ b16 \grg c16 \grd a8. ] |                  
                  \grg b8. [ \grd b16 \gre b8. \grd c16 ] \thrwd d4 \dblc c8 [ b8 ] |
                  \grip f4 \grg e8 [ c8 ] \grg b8. [ \grd b16 \gre b8. \grd c16 ]   |  
                  \break
                  \grg b8. [ \grd b16 \gre b8. \grd c16 ] \thrwd d4 \dblc c8 [ b8 ] |
                  \grg a8. [ \grd a16 \gre a8. \grd b16 ] \grg a8. [ b16 \grg c16 \grd a8. ] |                 
                  \thrwd d4 \grg f8 [ d8 ]  \dblc c4 \grg e8 [ c8 ] |
                  \grip f4 \grg e8 [ c8 ] \grg b8. [ \grd b16 \gre b8. \grd c16 ]   | 
                  \break                  
                 }
 
}


%{ TailToddle = 
{
 % Seaforth Highlander's 
 \reelTime
 \bar ".|:"
 \repeat volta 2 {
                   \thrwd d4 \grg f8 [ d8 ] \hdblg g4 \hdblf f8 [ e8 ] |
                   \thrwd d4 \grg f8 [ d8 ] \dble e4 \grg c16 [ \grd a8. ] |
                   \thrwd d4 \grg f8 [ d8 ] \hdblg g4 \hdblf f8 [ e8 ] |
                   \hdblg g4 A8. [ f16 ]  \dble e4 \grg c16 [ \grd a8. ] | \bar ":|.-.|:"
                   \break
                 }
 \repeat volta 2 {
                  \hdblg g4 \grA d16 [ b8. ] \dblb b4 \grg d16 [ b8. ] |
                  \hdblg g4 \grA d16 [ b8. ] \dble e4 \grg c16 [ \grd a8. ] |
                  \set Score.repeatCommands =#(list (list 'volta voltaFirst ) )
                  { 
                     \hdblg g4 \grA d16 [ b8. ] \dblb b4 \grg d16 [ b8. ] |                    
                  } 
                  \set Score.repeatCommands = #'((volta #f ))
                     \set Score.repeatCommands =#(list (list 'volta voltaSecond ) )
                  { 
                     \hdblg g4 d16 [ b8. ]  \hdblg g4 \grg d16 [ b8. ] |                    
                  } 
                  \set Score.repeatCommands = #'((volta #f ))
                  \grA c16 [ \grd a8. A8. f16 ]  \dble e4 \grg c16 [ \grd a8. ] |
                  \break
                 }
}
%}



AleIsDearRound =
{
 \reelTime
 \bar ".|:"
 \repeat volta 2 {
                  \dblf f4  \grg e8 [ f8 ] \grg b8 [ \grd b8 ] \grg f8 [ e8 ] |
                  \grg f8 [ A8 e8 A8 ]  c8 [ \grd a8 \grg e8 c8 ] |
                  \dblf f4  \grg e8 [ f8 ] \grg b8 [ \grd b8 ] \grg f8 [ e8 ] |
                  \grg f8 [ A8 e8 c8 ] \grg b8 [ \grd b8 \gre b8  c8 ] | \bar ":|.-.|" 
                  \break                  
                 }
                  \grg b8 [ \grd b8 \gre b8  c8 ]  \thrwd d4 \grg c8 [ b8 ] |
                  \grg a8 [ \grd a8 \gre a8 \grd b8 ]  \grg a8 [ b8 \grg c8 \grd a8 ] |
                  \grg b8 [ \grd b8 \gre b8  c8 ]  \thrwd d4 \grg c8 [ b8 ] |
                  a8 [ f8 ] \grg e8 [ c8 ] \grg b8 [ \grd b8 \gre b8 c8 ] |
                  \break
                  \grg b8 [ \grd b8 \gre b8  c8 ]  \thrwd d4 \grg c8 [ b8 ] |
                  \grg a8 [ \grd a8 \gre a8 \grd b8 ]  \grg a8 [ b8 \grg c8 \grd a8 ] |
                  \thrwd d4 \grg f8 [ d8 ]  \grg c4 A8 [ c8 ]  |
                  \grg b8 [ f8 ] \grg e8 [ c8 ]  \grg b8 [ \grd b8 ] \gre b8 [ \grd c8\fermata ] | \bar "|."
                  \break
}

TailToddleRound = 
{
    \reelTime

                  \set Score.repeatCommands =#(list (list 'volta voltaFirst ) )
                  { 
                   
                     \set Timing.measurePosition = #(ly:make-moment 3 4 )
                     \wslurd d4 |                    
                  } 
                  \set Score.repeatCommands = #'((volta #f ))  
                  
  %\reelTime
  \bar ".|:"
 \repeat volta 2 {
   
                  \set Score.repeatCommands =#(list (list 'volta voltaSecond ) )
                  { 
                     \set Timing.measurePosition = #(ly:make-moment 0 2 )
                     \thrwd d4                     
                  } 
                  \set Score.repeatCommands = #'((volta #f ))
                   \set Timing.measurePosition = #(ly:make-moment 1 4 )
                   \grg f8 [ d8 ] \hdblg g4 \hdblf f8 [ e8 ] |
                   \thrwd d4 \grg f8 [ d8 ] \dble e4 \grg c8 [ \grd a8 ] |
                   \thrwd d4 \grg f8 [ d8 ] \hdblg g4 \hdblf f8 [ e8 ] |
                   \hdblg g4 A8 [ f8 ]  \dble e4 \grg c8 [ \grd a8 ] | \bar ":|.-.|:"
                   \break
                 }
 \repeat volta 2 {
                  \hdblg g4 \grA d8 [ b8 ] \dblb b4 \grg d8 [ b8 ] |
                  \hdblg g4 \grA d8 [ b8 ] \dble e4 \grg c8 [ \grd a8 ] |
                  \set Score.repeatCommands =#(list (list 'volta voltaFirst ) )
                  { 
                     \hdblg g4 \grA d8 [ b8 ] \dblb b4 \grg d8 [ b8 ] |                    
                  } 
                  \set Score.repeatCommands = #'((volta #f ))
                     \set Score.repeatCommands =#(list (list 'volta voltaSecond ) )
                  { 
                     \hdblg g4 \grA d8 [ b8 ]  \hdblg g4 \grA d8 [ b8 ] |                    
                  } 
                  \set Score.repeatCommands = #'((volta #f ))
                  \grA c8 [ \grd a8 A8 f8 ]  
 }
 \alternative {
                 {
                   \dble e4 \grg c8 [ \grd a8 ] |
                 }
                 { 
                   \dble e4~e4 |
                   \break
                 }
 }
}




TailToddleExpanded = 
{
    \reelTime

                  \set Score.repeatCommands =#(list (list 'volta voltaFirst ) )
                  { 
                   
                     \set Timing.measurePosition = #(ly:make-moment 3 4 )
                     \wslurd d4 |                    
                  } 
                  \set Score.repeatCommands = #'((volta #f ))  
                  
  %\reelTime
  \bar ".|:"
 \repeat volta 2 {
   
                  \set Score.repeatCommands =#(list (list 'volta voltaSecond ) )
                  { 
                     \set Timing.measurePosition = #(ly:make-moment 0 2 )
                     \thrwd d4                     
                  } 
                  \set Score.repeatCommands = #'((volta #f ))
                   \set Timing.measurePosition = #(ly:make-moment 1 4 )
                   \grg f8 [ d8 ] \hdblg g4 \hdblf f8 [ e8 ] |
                   \thrwd d4 \grg f8 [ d8 ] \dble e4 \grg c8 [ \grd a8 ] |
                   \thrwd d4 \grg f8 [ d8 ] \hdblg g4 \hdblf f8 [ e8 ] |
                   f8 [g8 A8 f8 ]  \dble e4 \grg c8 [ \grd a8 ] | \bar ":|.-.|"
                   \break
                 }
                 %second part expanded
                 {
                  \hdblg g4 \grA d8 [ b8 ] \grg b8 [ \grd b8 ]  \grg d8 [ b8 ] |
                  \hdblg g4 \grA d8 [ b8 ] \dble e4 \grg c8 [ \grd a8 ] |
                  \hdblg g4 \grA d8 [ b8 ] \grg b8 [ \grd b8 ] \grg d8 [ b8 ] | 
                  \grg a8 [ \grd a8 A8 f8 ] \dble e4 \grg c8 [ \grd a8 ] |
                  \break
                  \hdblg g4 \grA d8 [ b8 ] \grg b8 [ \grd b8 ] \grg d8 [ b8 ] |
                  \hdblg g4 \grA d8 [ b8 ] \dble e4 \grg c8 [ \grd a8 ] |
                  \hdblg g4 \grA d8 [ b8 ] \hdblg g4 \grA d8 [ b8 ] | 
                  \grg a8 [ \grd a8 A8 f8 ] \dble e4~e4 | \bar "|."
                  \break
                 }

}





%***************  Old stuff below ******************


AthollHighlanders = 
{
  
  \time 2/4
  \bar ".|:"
  \repeat volta 2 {
                   \grg e8 [ \gra e8 ] \grg e16 [ c \grd a e ] |
                   \grg c16 [ \grd a \grg e a ]  \grg b16 [ c \grg d b ] |
                   \grg e8 [ \gra e8 ] \grg e16 [ c \grd a \grg b~] |
                   b16 [ d \grg d b ] \grg c16 [ b \grg a \grd c ] |
                   \break
                   \grg e8 [ \dblA A8 ] e16 [ c \grd a e ] |
                   \grg e16 [ a \grg c a ]  \dblb b8 [ \grg c16 d ] |
                   \grg c16 [ A \grg A e ]  \grg f16 [ e d \grg c~] |
                   c16 [ d \grg d G ]  \grg a4 |
                  \break
                }
                
\repeat volta 2 {
                  \dbla a8 [ \grg c16 e ] \grg a16 [ \grd c \grg e a ] |
                  \dblb b8 [ \grg d16 f] \grg f16 [ b \grg d f ] |
                  \dbla a8 [ \grg c16 e ] \grg a4 |
                  \grg b16 [ d \grg d b~ ] b16 [ c \grg c b ] |
                  \break
                  \dbla a8 [ \grg c16 e ] \grg a16 [ \grd c \grg e a ] |
                  \grg b16 [ d f \grg f~]  f16 [ b \grg d f ] |
                  \grg e16 [ A \grg A e ]   \grg f16 [ e d \grg c~] |
                  c16 [ d \grg d G ] 
                }
   \alternative {
                 { \grg a4 | }
                 { \set Timing.measurePosition = #(ly:make-moment 0 2 )\grg a2 | \break }
                }                  
}

MinkSporran = 
{
 \time 9/8 
 \bar ".|:"
 \repeat volta 2 {
                   \dblc c4. \grg e8 [ c8 a8 ] A8 [ e8 d8 ] |
                   \dblc c4 e8 \grg e8 [ c a8 ]  \grg b8 [ c8 d8 ] |
                   \dblc c4.  \grg e8 [ c8 a8 ] A8 [ e8 c8 ] |
                   \dblb b4 g8~g8 [ \grA f8 g8 ] \grA e8 [ d8 b8 ] |
                   \break
 }
  \repeat volta 2 {
                   \dblc c4 A8 \grg A8 g8 A8 g8 [ e8 d8 ] |
                   \dblc c4 A8 \grg A8 g8 A8 b8 [ c8 d8 ] |
                   \dblc c4 A8 \grg A8 g8 A8 e8 [ d8 c8 ] |
                   \dblb b4 g8~g8 [ \grA f8 g8 ]  \grA e8 [ d8 b8 ] |\bar ":|."
 }
     \set Score.repeatCommands =#(list (list 'volta voltaLineTwoOnly ) )
     {
      \set Timing.measurePosition = #(ly:make-moment 3 8 ) \grG a2~a4 |
      \break 
     } 
     \set Score.repeatCommands = #'((volta #f ))  
  }
  %{
  \alternative {
                  \set Timing.measurePosition = #(ly:make-moment 3 8 ) a2~a4 |
                  \break 
               }
  }%}
 
%}

MaidsOfTheBlackGlenTwo = 
{
  \time 4/4
  \defaultTimeSignature
                \bar ".|"
                \set Timing.measurePosition = #(ly:make-moment -1 16 ) e16 |
                \grg f8. [ e16 ]  \thrwd d8. [ e16 ]  \grg f8. [ g16 ] \dblA A8. [ f16 ] |
                \dble e8. [ d16 ]  \grg b16 [ d8. ] \grg e8. [ f16 ] \dblg g8. [ e16 ] |
                \grg f8. [ e16 ]  \thrwd d8. [ e16 ]  \grg f8. [ g16 ] \dblA A8. [ f16 ] |  
                \dblg g8. [ e16 ] \dblA A8. [ f16 ] \dble e4 \thrwd d8. [ e16 ] |
                \break
                \grg f8. [ e16 ]  \thrwd d8. [ e16 ]  \grg f8. [ g16 ] \dblA A8. [ f16 ] |
                \dble e8. [ d16 ]  \grg b16 [ d8. ] \grg e8. [ f16 ] \dblg g8. [ e16 ] |
                \grg f16 [ A8. ]  \hdble e8. [ f16 ]  \thrwd d8. [ f16 ] \grg b16 [ d8. ] |
                \set Timing.measurePosition = #(ly:make-moment 1 16 ) \grg a8. [ d16 ]  \dblA A8. [ f16 ] \dble e4 \thrwd d8. |
                \bar "|.-b"
                \break
}

Bush_Reel = 
{
  \reelTime
  \bar ""
  \bar ".|:"
  \repeat volta 2 {
                   \grg a4 \grg c8 [ a ] \grg c8 [ e \grg f e ] |
                   \dblA A4 g8 [ A ] f8 [ e \grg c b ] |
                   \grg a4 \grg c8 [ a ] \grg c8 [ e \grg f e ] |
                   A8 [ f \grg e c ] \grg b8 [d \gre G \grd b] |
                   \break
  }
  \repeat volta 2 {
                   \grg a4 A8 [ g ] A8 [ e \grg f A ] |
                   a4 A8 [ e ]  \grg f8 [ e \grg c b ] |
                   \grg a4 A8 [ e ]  \grg f8 [ A e f ] |
                   A8 [ f \grg e c ] \grg b8 [ d \gre G \grd b ] |
                   \break
  }

}


SilverSpearATL = 
{
  \reelTime
  \bar ""
  \bar ".|"
  \grg G8 [ a \grg a \grd a] \grg b8 [ a \grg a \grd a] |
  \grg d8 [ f \grg e d ] \grg b8 [ d \grg d \grc d ] |
  \grg G8 [ a \grg a \grd a] \grg b8 [ a \grg a \grd a] | 
  \grg d8 [ f \grg e d ] \dblb b4 \grG a4 |
  \break
  \grg G8 [ a \grg a \grd a] \grg b8 [ a \grg a \grd a ] |
  \grg d8 [ f \grg e d ] \grg b8 [ d \grg e f ] |
  \hdblg g4 \grA g8 [e ] \grg f4 \grg f8 [ e ] |
  \grg d8 [ f \grg e d ] \dblb b4 \grG a4 |
  \bar "|.-b"
  \break
  \grg f8 [ A \grg A \grg A ]  f8 [ A \grg A f] |
  \grA g8 [ f \grg e d ] \grg b8 [ d \grg d \grc d ] |
  \grg f8 [ A \grg A \grg A ]  f8 [ A \grg A f] |
  \grA g8 [ f \grg e d ] \dblb b4 \grG a4 |
  \break
  \grg f8 [ A \grg A \grg A ]  f8 [ A \grg A f] |
  \grA g8 [ f \grg e d ] \grg b8 [ d \grg e f ] |
  \hdblg g4 \grA g8 [e ] \grg f4 \grg f8 [ e ] |
  \grg d8 [ f \grg e d ] \dblb b4 \grG a4 |\bar "|.-b"
  \break
}

Bush_Reel_Reprise = 
{
  \reelTime 
  \grg a4 \grg c8 [ a8 ] \grg c8 [ e8 \grg f8 e8 ] |
  A8 [ f8 \grg e8 c8 ] \grg b8 [ d8 \gre G8 \grd b8 ] |
  \grg a2~a2~| a4 \hideNotes r2. \unHideNotes|
  %\set Timing.measurePosition = #(ly:make-moment 3 4 )a4 |
  \break
}

Bush_Reel_Reprise_Harmony = 
{
  \reelTime
  \grg e4~e4 \grg a4~a4 |
  d4 a4 \grg b4~b4 |
  \grg e2~e2~ | e4  \hideNotes  r2. \unHideNotes|
  %\set Timing.measurePosition = #(ly:make-moment 3 4 ) e4 |
  \break

}
 
 
BillSawyerGillette_First = 
{
  \time 6/8
  \bar ".|"
  \dble e4 a8 \grg a4 \taor a8 |
  \grg b16 [ \grd G8. \grd b8 ] \thrwd d8. [ c16 d8 ] |
  \grg e8. [ a16 \grd a8 ] \grg b16 [ g8. f8 ] |
  \dble e4.  \gra e4 \hdblg g8 |
  \break
  A8. [ e16 \gra e8 ] \grg e8. [ d16 c8 ] |
  \thrwd d8.  [ c16 d8 ] \dblG G8. [ \grg b16 d8 ] |
  \dble e4 a8 \grg G8. [ a16 b8 ] |
  \dble e4.  \gra e4 \hdblg g8 |
  \bar "|.-b"
  \break
}

BillSawyerGillette_Two_Lead =
{
  %\time 6/8  
  \bar ".|"
  \set Score.currentBarNumber = #9
  \grA f16 [ A8. \grg A8 ] \hdble e8. [ d16 c8 ] |
  \thrwd d8. [ c16 d8 ]  \dblG G4 \hdblg g8 |
  \grA f16 [ A8. e8 ] \dble e8. [ d16 \grg c8 ] |
  \thrwd d4.  \dble e4 \hdblg g8 |
  \break
  \grA f16 [ A8. \grg A8 ] \hdble e8. [ d16 c8 ] |
  \thrwd d8.  [ c16 d8 ] \dblG G8. [ \grg b16 d8 ] |
  \dble e4 a8 \grg G8. [ a16 b8 ] |
  \grg a4. \wbirl a4. |
  \bar "|.-b"
  \break

}

BillSawyerGillette_Two_Harmony =
{
  %\time 6/8

  
  A16 [ d8. f8 ]  \grA g8. [ f16 e8 ] |
  \grg a4.  \dblb b4  d8 |
  \grg d4 \grG a8 \grg a8. [ \grd b16 e8 ] |
  \dblf f4. \dblc c4. |
  \break
  A16 [ d8. f8 ] \grA g8. [ f16 e8 ] |
  \dblf f4.  \thrwd d4. |
  \grg a8. [ \grd c16 e8 ] \grg b8. [ d16 g8 ] |
  \grA e4 c8 \thrwd d4. |
  \break
}


Minnie_Hynd = 
{
  \time 6/8
  \bar ".|:"
  \repeat volta 2 {
                   \grg a8 [ \grd c e ] \grg e8 [ c e ] |
                   A8 [ g A ]  \grg e8 [ c \grd a] |
                   \grg a8 [ \grd c e ] \grg e8 [ c e ] |
                   \grg d8 [ c d ]  \dblb b4 e8 |
                   \break
                   \grg a8 [ \grd c e ] \grg e8 [ c e ] |
                   A8 [ g A ]  \grg e8 [ c \grd a] |
                   \grg c16 [ d8. c8 ] \grg b16 [ \grd G8. \grd b8] |
                   \grg a8 [ \grd c e ] \dblA A4.|
                   \break
  }
  \repeat volta 2 {
                   \hdblf f4.  \dble e4. |
                   \grg a8 [ \grd c e ] \grg e8 [ c e ] |
                   \dblf f4. \dble e4. |
                   \grg a8 [ \grd c e ] \dbld d8 [ c d ] |
                   \break
                   \dblf f4. \dble e4. |
                   \grg a8 [ \grd c e ] \grg e8 [ c e ] |
                   \grg c16 [ d8. c8 ] \grg b16 [ \grd G8. \grd b8] |
                   \grg a8 [ \grd c e ] \dblA A4.|
                   \break
  }
}

