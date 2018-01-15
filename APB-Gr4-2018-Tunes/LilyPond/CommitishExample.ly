\version "2.19.80"
 
\include "/home/ben/workspace/GitHub_BagPipeTunes/include/gitDefinitions.ily"


filename = "~/CommitishExample.ly"
tunesetVersion = "Version 1"
source = ""  

 

\header { 
          title = "Commitish Example"
          composer = ""
          arranger = ""
          meter = "" 
          tagline = \markup { \filename  " " \source " "  git Version: \gitCommitish  Committed: \gitDateTime
          Engraved:
          \simple #(strftime "%d - %b - %Y - %H%M  " (localtime (current-time)))
         % with \with-url #"http://lilypond.org/"
         % \line { LilyPond \simple #(lilypond-version) (http://lilypond.org/) }
        }    
}



\book {
  %\bookOutputSuffix   what to put here to get the suffix to be the git version "0490435" or whatever the latest version is???
  \bookOutputName "CommitishExample"   
  \score {
	\new GrandStaff <<
		\new Staff = "GHB" <<
			\new Voice {							
				\time 4/4
				\relative c''{	c4 d4 e4 f4 | }
				\break
				
			}
		>>		
	>>
    
  }
}

  \paper {
    #(set-paper-size "letter" 'portrait)        
        page-breaking = #ly:minimal-breaking
  }



