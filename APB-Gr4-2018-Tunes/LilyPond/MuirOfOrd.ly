\version "2.19"

\include "bagpipe.ly" 
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/BWB_Bagpipe.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/score_settings.ly"
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/gitDefinitions.ily"

filename = "~/MuirOfOrd.ly"
tunesetVersion = "Version 1b"
source = "APB"

\header { 
          title = "Muir Of Ord"
          composer = "G. S. McLennan"
          arranger = "PM Graeme Smith APB"
          meter = "March" 
          tagline = \markup { \filename  " " \source " "  git Version: \gitCommitish  Committed: \gitDateTime
          Engraved:
          \simple #(strftime "%d - %b - %Y - %H%M  " (localtime (current-time)))
         % with \with-url #"http://lilypond.org/"
         % \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
        }    
}


#(define-bar-line "|.-b" "|." ".|" "|.") %This is for putting all parts in one score!
#(define-bar-line ":|.-b" ":|." ".|:" ":|.") %This is for putting all parts in one score!
#(define-bar-line ":|.-.|" ":|." ".|" "|." )    
\defineBarLine "|.-.|:" #'("|." ".|:" "" ) %This rocks! This ends a repeated part and starts a non-repeated part.
\defineBarLine ":|.-.|:" #'(":|." ".|:" "" ) %This rocks! This ends a repeated part and starts a repeated part.


#(allow-volta-hook "||")
#(allow-volta-hook "|")

%   #(set-global-staff-size 16)

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
                  \grf g16. [ f32 \grg e16. d32 ] \grg b8 [ \thrwd d8 ] |
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

\book {
  \bookOutputName "Muir-Of-Ord"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \defaultTimeSignature
          \MuirOfOrd
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
  \bookOutputName "Muir-Of-Ord-Landscape"   
  \score {
    \new Staff <<
        \new Voice {
          \global
          \defaultTimeSignature
          \MuirOfOrd
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
	\new GrandStaff <<
		\new Staff = "MidiStaff" <<
                  \unfoldRepeats
			\new Voice {
				\set midiInstrument = #"bagpipe"
				\global
                                 \MuirOfOrd
			}
		>>
	>>	
	\midi { \midiSettings }	
}
