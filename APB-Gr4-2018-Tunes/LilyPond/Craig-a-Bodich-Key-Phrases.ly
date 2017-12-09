\version "2.19.80"


\include "bagpipe.ly" 
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/score_settings.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/gitDefinitions.ily"

filename = "~/Craig-a-Bodich-Key-Phrases.ly"
tunesetVersion = "Version 1"
source = ""
% source = "Logan's Complete Tutor for the Highland Bagpipe" 


\header { 
          title = "Craig-a-Bodich Key Phrases"
          composer = "APB"
          arranger = ""
          meter = "Strathspey" 
          tagline = \markup { \filename  " " \source " "  git Ver: \gitCommitish  Committed: \gitDateTime
          Engraved:
          \simple #(strftime "%d-%b-%Y-%H%M  " (localtime (current-time)))
         % with \with-url #"http://lilypond.org/"
         % \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
        }    
}

#(define-bar-line "|.-b" "|." ".|" "|.") %This is for putting all parts in one score!
#(define-bar-line ":|.-b" ":|." ".|:" ":|.") 
#(define-bar-line ":|.-.|" ":|." ".|" "|." )    
#(define-bar-line "|.-.|:" "|." ".|:" "" ) 
% 
% \paper {
% 	#(set-paper-size "letter" 'portrait)
% }


Craig-a-Bodich-Key-Phrases = 
{
  \override Score.SpacingSpanner.spacing-increment = #0  %this is to get the first line on one line.
  \time 4/4
  \bar ".|:"
  \repeat volta 2 {
                    \grg G8. [ a16 ] \grg b16 [ e8. ] \grg G8. [ a16 ] \grg b16 [ e8. ] |
                    \grg G8. [ a16 ] \grg b16 [ e8. ] \grg G8. [ a16 ] \grg b16 [ e8. ] |
                    \grg G8. [ a16 ] \grg b16 [ e8. ] \grg G8. [ a16 ] \grg b16 [ e8. ] |
                    \grg G8. [ a16 ] \grg b16 [ e8. ] \grg G8. [ a16 ] \grg b16 [ e8. ] |
                    \break                   
                  }
  \repeat volta 2 {                 
                    \grg G8. [ a16 ] \grg b16 [ d8. ] \grg G8. [ a16 ] \grg b16 [ d8. ] |
                    \grg G8. [ a16 ] \grg b16 [ d8. ] \grg G8. [ a16 ] \grg b16 [ d8. ] |
                    \grg G8. [ a16 ] \grg b16 [ d8. ] \grg G8. [ a16 ] \grg b16 [ d8. ] |
                    \grg G8. [ a16 ] \grg b16 [ d8. ] \grg G8. [ a16 ] \grg b16 [ d8. ] |
                    \break                   
                  }
  \repeat volta 2 {
                    \hdble e8. [ d16 ] \grg e16 [ g8. ] \hdble e8. [ d16 ] \grg e16 [ g8. ]  |
                    \hdble e8. [ d16 ] \grg e16 [ g8. ] \hdble e8. [ d16 ] \grg e16 [ g8. ]  |
                    \hdble e8. [ d16 ] \grg e16 [ g8. ] \hdble e8. [ d16 ] \grg e16 [ g8. ]  |
                    \hdble e8. [ d16 ] \grg e16 [ g8. ] \hdble e8. [ d16 ] \grg e16 [ g8. ]  |                     
                    \break                   
                  }
  \repeat volta 2 {
                    g16 [ \grA e8. ] \gra e16 [ g8. ] \grA b16 [ d8. ] \dble e4 |
                    g16 [ \grA e8. ] \gra e16 [ g8. ] \grA b16 [ d8. ] \dble e4 |
                    g16 [ \grA e8. ] \gra e16 [ g8. ] \grA b16 [ d8. ] \dble e4 |
                    g16 [ \grA e8. ] \gra e16 [ g8. ] \grA b16 [ d8. ] \dble e4 |
                    \break                   
                  }  
                  
}



% This just outputs both a portrait and a landscape pdf file.  
% By naming the \bookOutputName the same as the file name, you 
% get the engraving in the Frescobaldi window on the right. 

\book {
  \bookOutputName "Craig-a-Bodich-Key-Phrases"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \defaultTimeSignature
          \Craig-a-Bodich-Key-Phrases
        }      	
    >>
    \layout {
             \ScoreLayout
             %#(layout-set-staff-size 20)  
            }
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
  \bookOutputName "Craig-a-Bodich-Key-Phrases-Landscape"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \defaultTimeSignature
          \Craig-a-Bodich-Key-Phrases
        }
      >>		
    \layout { 
              \ScoreLayout
              %#(layout-set-staff-size 13)  
            }
    \header{
      %piece = "Echo Lake "
      %opus = "Donald Macleod"
    }
  }
  \paper {
    #(set-paper-size "letter" 'landscape)
    % page-breaking = #ly:one-page-breaking
    %system-count = #10
  }
}

