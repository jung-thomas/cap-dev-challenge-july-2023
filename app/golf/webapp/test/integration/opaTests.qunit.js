sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'golf/test/integration/FirstJourney',
		'golf/test/integration/pages/RoundsList',
		'golf/test/integration/pages/RoundsObjectPage',
		'golf/test/integration/pages/Rounds_holesObjectPage'
    ],
    function(JourneyRunner, opaJourney, RoundsList, RoundsObjectPage, Rounds_holesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('golf') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRoundsList: RoundsList,
					onTheRoundsObjectPage: RoundsObjectPage,
					onTheRounds_holesObjectPage: Rounds_holesObjectPage
                }
            },
            opaJourney.run
        );
    }
);