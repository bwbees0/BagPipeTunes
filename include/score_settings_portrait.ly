\version "2.14.2"
%
%	score_settings.ly is a place to put the tweaks I use for 
%	formatting my sheets. 
%


% 
%   Note that \filename an \tuneset_version are pulled in from the file 
%	with the music in it. 
% 
\include "bagpipe.ly"

\paper 
{
	#(set-paper-size "letter" 'landscape)
        footnote-auto-numbering = ##t
        top-margin = 0.5\in
        bottom-margin = 0.5\in
        left-margin = 0.4\in
        right-margin = 0.4\in
        between-system-space = #0.1
        between-system-padding = #0.1
        page-limit-inter-system-space = ##t 
        page-limit-inter-system-space-factor = 1.3
        ragged-last-bottom = ##f
        ragged-bottom = ##t
        oddFooterMarkup =  \markup { 
          \fill-line { \line 
                       { \on-the-fly #first-page { \concat {  \super \char #8224 } \filename } }
                       \center-column { \tunesetVersion }   
                       \right-column { #print-page-number-check-first \fromproperty #'page:page-number-string }
          }
          \line { }
        }
        %oddFooterMarkup =  \markup { \fill-line { \on-the-fly #not-first-page \right-column { "Grade IV Quick March Medley Version 1" } } }
        evenFooterMarkup = \markup \fill-line  { \line { } \center-column { \tunesetVersion }
                                                 \right-column { #print-page-number-check-first \fromproperty #'page:page-number-string }
        }
}

\layout
{
  	  indent = 0
  	  %	\context { \Score \remove "Bar_number_engraver"}
  	  ragged-right = ##f
          ragged-last = ##f
          footnote-auto-numbering = ##t
           \context { 
            \Score 
            \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 24)
          }
          \context {
            \Staff 
            %\override VerticalAxisGroup #'default-staff-staff-spacing
            %          #'basic-distance = #10
          }
}

 
ScoreLayout = \layout {
                        indent = 0
                        %	\context { \Score \remove "Bar_number_engraver"}
                        ragged-right = ##f
                        ragged-last = ##f
                        \context { 
                          \Score 
                          \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 8)

                        }

                        
                         \context {
                           \Voice
                           \consists "Horizontal_bracket_engraver"
                         }
}
  
midiSettings =  \midi {
		\context {
			\Staff
			\remove "Staff_performer"
		}
		\context {
			\Voice
			\consists "Staff_performer"
		}
		\context {
			\Score
			tempoWholesPerMinute = #(ly:make-moment 72 4)
		}
}
