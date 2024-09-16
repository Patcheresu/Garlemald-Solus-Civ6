/*
	Localisation
	Authors: MC
*/

-----------------------------------------------
-- General notes on 'localization' (or 'in-game text')
-----------------------------------------------

INSERT INTO LOCALIZEDTEXT
(LANGUAGE, TAG, TEXT)
VALUES

-----------------------------------------------
-- Leader Name
-----------------------------------------------	

('en_US', 'LOC_LEADER_PATCHERESU_SOLUS_NAME', 'Solus zos Galvus'),

-----------------------------------------------
-- Leader Unique Ability
-----------------------------------------------	

(
    'en_US',
    'LOC_TRAIT_LEADER_PATCHERESU_NOS_SUMUS_MANUS_NAME',
    'Nos Sumus Manus'
),
(
    'en_US',
    'LOC_TRAIT_LEADER_PATCHERESU_NOS_SUMUS_MANUS_DESCRIPTION',
    'Upon unlocking Rifling, instantly unlock Steel, Refining, and Combustion. Upon unlocking Industrialization and Scientific Theory, instantly unlock Flight. Gains the Magitek Academy unique District with Writing.'
),
(
    'en_US',
    'LOC_DISTRICT_SOLUS_MAGITEK_ACADEMY_NAME',
    'Magitek Academy'
),
(
    'en_US',
    'LOC_DISTRICT_SOLUS_MAGITEK_ACADEMY_DESCRIPTION',
    'A district unique to Solus zos Galvus for scientific endeavors. Replaces the Campus district. Provides all adjacency bonuses a Holy Site would normally provide in [ICON_Science] Science form in addition to the regular Campus adjacencies, as well as bonus Science with Astrology and Theology, but has increased maintenance, plunder, and is far more expensive to produce.'
),

-----------------------------------------------
-- Leader UD
-----------------------------------------------	

(
    'en_US',
    'LOC_PATCHERESU_MAGITEK_ACADEMY_LIBRARY_SCIENCE',
    '+{1_num} [ICON_Science] Science after unlocking Astrology.'
),
(
    'en_US',
    'LOC_PATCHERESU_MAGITEK_ACADEMY_UNIVERSITY_SCIENCE',
    '+{1_num} [ICON_Science] Science after unlocking Theology.'
),
(
    'en_US',
    'LOC_DISTRICT_MAGITEK_ACADEMY_MOUNTAINS_SCIENCE1',
    '+{1_num} [ICON_Science] Science from the adjacent Mountain {1_Num : plural 1?tile; other?tiles;}.'
),
(
    'en_US',
    'LOC_DISTRICT_MAGITEK_ACADEMY_MOUNTAINS_SCIENCE2',
    '+{1_num} [ICON_Science] Science from the adjacent Mountain {1_Num : plural 1?tile; other?tiles;}.'
),
(
    'en_US',
    'LOC_DISTRICT_MAGITEK_ACADEMY_MOUNTAINS_SCIENCE3',
    '+{1_num} [ICON_Science] Science from the adjacent Mountain {1_Num : plural 1?tile; other?tiles;}.'
),
(
    'en_US',
    'LOC_DISTRICT_MAGITEK_ACADEMY_MOUNTAINS_SCIENCE4',
    '+{1_num} [ICON_Science] Science from the adjacent Mountain {1_Num : plural 1?tile; other?tiles;}.'
),
(
    'en_US',
    'LOC_DISTRICT_MAGITEK_ACADEMY_MOUNTAINS_SCIENCE5',
    '+{1_num} [ICON_Science] Science from the adjacent Mountain {1_Num : plural 1?tile; other?tiles;}.'
),
(
    'en_US',
    'LOC_DISTRICT_MAGITEK_ACADEMY_JUNGLE_SCIENCE',
    '+{1_num} [ICON_Science] Science from the adjacent Rainforest tiles.'
),
(
    'en_US',
    'LOC_DISTRICT_MAGITEK_ACADEMY_DISTRICT_SCIENCE',
    '+{1_num} [ICON_Science] Science from the adjacent District.'
),
(
    'en_US',
    'LOC_FEATURE_MAGITEK_ACADEMY_BARRIER_REEF_SCIENCE',
    '+{1_num} [ICON_Science] Science from the adjacent natural wonder Great Barrier Reef.'
),
(
    'en_US',
    'LOC_DISTRICT_MAGITEK_ACADEMY_GOVERNMENT_SCIENCE',
    '+{1_num} [ICON_Science] Science from the adjacent Government District.'
),
(
    'en_US',
    'LOC_DISTRICT_MAGITEK_ACADEMY_GEOTHERMAL_SCIENCE',
    '+{1_num} [ICON_Science] Science from each adjacent Geothermal Fissure.'
), (
    'en_US',
    'LOC_DISTRICT_MAGITEK_ACADEMY_REEF_SCIENCE',
    '+{1_num} [ICON_Science] Science from the adjacent Reef.'
),
(
    'en_US',
    'LOC_DISTRICT_MAGITEK_ACADEMY_PAMUKKALE_SCIENCE',
    '+{1_num} [ICON_Science] Science from the adjacent natural wonder Pamukkale.'
),
(
    'en_US',
    'LOC_DISTRICT_MAGITEK_ACADEMY_NATURALWONDER_SCIENCE',
    '+{1_num} [ICON_Science] Science from the adjacent natural {1_Num : plural 1?wonder; other?wonders;}.'
),
(
    'en_US',
    'LOC_DISTRICT_MAGITEK_ACADEMY_FOREST_SCIENCE',
    '+{1_num} [ICON_Science] Science from the adjacent Forest tiles.'
),
-----------------------------------------------
-- Leader Agenda
-----------------------------------------------	

('en_US', 'LOC_AGENDA_PATCHERESU_SOLUS_NAME', 'Engineer of the Future'),
(
    'en_US',
    'LOC_AGENDA_PATCHERESU_SOLUS_DESCRIPTION',
    'Will explore the lands around him as much as possible. Respects those that commit efforts to science and culture, but dislikes those that do not have enough amenities.'
),

(
    'en_US',
    'LOC_DIPLO_KUDO_LEADER_PATCHERESU_SOLUS_REASON_ANY',
    '(You have a high culture output and are progressing well with science.)'
),
(
    'en_US',
    'LOC_DIPLO_MODIFIER_PATCHERESU_SOLUS_HAPPY',
    'I have to admit, the prowess of your people is worth some due recognition.'
),

(
    'en_US',
    'LOC_DIPLO_WARNING_LEADER_PATCHERESU_SOLUS_REASON_ANY',
    '(You have low Amenities.)'
),
(
    'en_US',
    'LOC_DIPLO_MODIFIER_PATCHERESU_SOLUS_UNHAPPY',
    'Is this how the proud citizens of your nation live? Is this the best you can muster with what the world has blessed you with?'
),


-----------------------------------------------
-- Dawn of Man (Loading Screen) Text
-----------------------------------------------	

(
    'en_US', 'LOC_LOADING_INFO_LEADER_PATCHERESU_SOLUS',
    'First Emperor of Garlemald! Raise up your embittered, forsaken people and shine forth a new path for them through technological innovation. You shall reclaim the land, whether it takes a march of feet, hooves, treads, or wheels. Show them a power unlike any humanity has seen.'
),

-----------------------------------------------
-- Diplomacy Text: First Meet
-----------------------------------------------	

-- First AI Line (ANY)
(
    'en_US', 'LOC_DIPLO_FIRST_MEET_LEADER_PATCHERESU_SOLUS_ANY',
    'Approach, stranger. Nehua notoca Po Ngbe, Ku of the Olmec people. Nechpactia nimitzixmati. Know that we cultivate many lands and keep a watchful eye over the rolling hills and plains, far and wide.'
),

-- AI invitation to visit nearby City (ANY)
(
    'en_US', 'LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_PATCHERESU_SOLUS_ANY',
    'We can help you navigate our territory and walk our grounds, wondering at the colossal monuments we built for our Gods. Will you give us the honour of your company?'
),

-- AI accepts human invitation (ANY)
(
    'en_US',
    'LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_PATCHERESU_SOLUS_ANY',
    'I am glad to hear it.'
),

-- AI invitation to exchange Capital Information (ANY)
(
    'en_US',
    'LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_PATCHERESU_SOLUS_ANY',
    'How better to know a friend than to know his home? Will you indulge our tribesmen, for we will certainly welcome yours?'
),

-----------------------------------------------
-- Diplomacy Text: Greetings
-----------------------------------------------	

-- (HAPPY)
(
    'en_US', 'LOC_DIPLO_GREETING_LEADER_PATCHERESU_SOLUS_HAPPY',
    'Ahmo titonamiqui ye huehcauh. Many moons have circled since we last spoke. It is great to see you again, ikniutli.'
),

-- (UNHAPPY)
(
    'en_US', 'LOC_DIPLO_GREETING_LEADER_PATCHERESU_SOLUS_UNHAPPY',
    'Tlein chiua tikneki? What makes you request me at this time?'
),

-----------------------------------------------
-- Diplomacy Text: Delegation
-----------------------------------------------	

-- AI Accepts (ANY)
(
    'en_US',
    'LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_PATCHERESU_SOLUS_ANY',
    'Your delegation is welcome into my lands, and shall be granted the utmost respect - though please respect our customs and our sacred sites.'
),

-- AI Rejects (ANY)
(
    'en_US',
    'LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_PATCHERESU_SOLUS_ANY',
    'Our sacred lands are closed to visitors at this time.'
),

-- AI Requests (ANY)
(
    'en_US', 'LOC_DIPLO_DELEGATION_FROM_AI_LEADER_PATCHERESU_SOLUS_ANY',
    'We have prepared a delegation to visit your lands carrying the finest jade stone, Kunz axes and ornamental figurines crafted by our people. Consider these a gift.'
),

-----------------------------------------------
-- Diplomacy Text: Open Borders
-----------------------------------------------	

-- AI accepts from human (ANY)	
(
    'en_US',
    'LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_PATCHERESU_SOLUS_ANY',
    'The lands are under the watch of the Gods - there is no reason we cannot each use them.'
),

-- AI rejects from human (ANY)	
(
    'en_US',
    'LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_PATCHERESU_SOLUS_ANY',
    'Our people have a sacred bond with our lands. To open them to your people would be sacrilege.'
),

-- AI requests from human (ANY)	
(
    'en_US', 'LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_PATCHERESU_SOLUS_ANY',
    'God watches over the lands of the Olmec. Let our people share each other`s territory, such that our Gods can protect both our races.'
),

-----------------------------------------------
-- Diplomacy Text: Declare Friendship
-----------------------------------------------	

-- AI accepts from human (ANY)
(
    'en_US',
    'LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_PATCHERESU_SOLUS_ANY',
    'Tlauel kuali! The Olmec werejaguars stand ready to protect our own people and those of our trusted allies, such that you have proven yourself to be.'
),

-- AI rejects from human (ANY)	
(
    'en_US',
    'LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_PATCHERESU_SOLUS_ANY',
    'Amo ipan inin kauitl. Our people are not ready to share such a close bond and friendship at this time.'
),

-- AI Requests friendship from human (ANY)	
(
    'en_US', 'LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_PATCHERESU_SOLUS_ANY',
    'Kaua tehuantin maka se ixpolotl uikpa se ixpolotl. Even with God watching over our lands, one can never have too many allies. Let us announce to the world that our people share a happy and meaningful bond!'
),

-- Human accepts AI requests, AI responds (ANY)	
(
    'en_US',
    'LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_PATCHERESU_SOLUS_ANY',
    'With the Olmec gods as our witness: tlazohcamati. May this bond stay unbroken for many lifetimes.'
),

-- Human rejects AI requests, AI responds (ANY)	
(
    'en_US',
    'LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_PATCHERESU_SOLUS_ANY',
    'It is a shame that you shun the recognition of our friendship.'
),

-----------------------------------------------
-- Diplomacy Text: Alliance
-----------------------------------------------	

-- AI Requests an alliance from human (ANY)
(
    'en_US', 'LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_PATCHERESU_SOLUS_ANY',
    'Together, we can be yet stronger in our claim to the lands we each possess. Let us show the world that the blood between our nations runs thicker than most, with an alliance to strengthen ourselves against all foes. What do you say?'
),

-----------------------------------------------
-- Diplomacy Text: Kudos & Warnings
-----------------------------------------------	

-- AI Kudos (ANY)
(
    'en_US', 'LOC_DIPLO_KUDO_EXIT_LEADER_PATCHERESU_SOLUS_ANY',
    'The Olmec are impressed by your artistry and your commitment to learning. We hear stories of your educated revelry and long for the same.'
),

-- AI Warnings (ANY)
(
    'en_US', 'LOC_DIPLO_WARNING_EXIT_LEADER_PATCHERESU_SOLUS_ANY',
    'You rule without the recognition of a higher power. You believe this shows strength; but we know it as your weakness.'
),

-----------------------------------------------
-- Diplomacy Text: Troops Near Border
-----------------------------------------------	

-- AI warns player for border troops (HAPPY)
(
    'en_US',
    'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_PATCHERESU_SOLUS_HAPPY',
    'Our citizens and our Gods keep watch over our lands. Your military presence has not gone unnoticed. I would ask you to keep your distance, for these lands are holy to the Olmec.'
),

-- AI warns player for border troops (UNHAPPY)
(
    'en_US',
    'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_PATCHERESU_SOLUS_UNHAPPY',
    'Our Gods do not look kindly upon your military. This is a desecration of our holy lands and I insist you to move back at once, or accept the swift consequence.'
),

-- AI accepts player's warning for border troops warning (HAPPY)
(
    'en_US',
    'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_PATCHERESU_SOLUS_HAPPY',
    'You have nothing to fear. All Olmec people are most at peace amongst the natural terrain - even those trained in combat. We will ensure they find new territory for their camps.'
),

-- AI accepts player's warning for border troops warning (UNHAPPY)
(
    'en_US',
    'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_PATCHERESU_SOLUS_UNHAPPY',
    'The Olmec tlakah will station themselves elsewhere. Know, though, that it is the land of our Gods and they do not take kindly to those that interfere with the freedom of their people.'
),

-- AI rejects player's warning for border troops warning (ANY) ~ DECLARES WAR
(
    'en_US',
    'LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_PATCHERESU_SOLUS_ANY',
    'The land that you expect us to vacate is ours by birthright. That you do not understand this means we cannot peacefully share it. Prepare for conflict!'
),

-----------------------------------------------
-- Diplomacy Text: Settling Too Close
-----------------------------------------------	

-- AI warns player for settling too close (HAPPY)
(
    'en_US',
    'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_PATCHERESU_SOLUS_HAPPY',
    'The land you have claimed is that of the Olmec. Please be mindful of where you locate your settlements in future.'
),

-- AI warns player for settling too close (UNHAPPY)
(
    'en_US',
    'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_PATCHERESU_SOLUS_UNHAPPY',
    'Your settlement is within lands that are the right of the Olmec. I cannot promise that our people and Gods will tolerate this encroachment.'
),

-- Positive AI response to human request (HAPPY)
(
    'en_US',
    'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_PATCHERESU_SOLUS_HAPPY',
    'I was unaware that you laid claim to such lands. Rest assured, I shall find other, better lands to build upon elsewhere.'
),

-- Positive AI response to human request (UNHAPPY)
(
    'en_US',
    'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_PATCHERESU_SOLUS_UNHAPPY',
    'Oh? This land is yours? My apologies, I mistook it for barbarian territory. But if you insist, then I shall settle elsewhere next time.'
),

-- Negative AI response to human request (HAPPY)
(
    'en_US',
    'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_PATCHERESU_SOLUS_HAPPY',
    'There is no need for hostility, we are able to peacefully share these lands. It is the Olmec way!'
),

-- Negative AI response to human request (UNHAPPY)
(
    'en_US',
    'LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_PATCHERESU_SOLUS_UNHAPPY',
    'This land is the birthright of the Olmec. If you want to reclaim it, you will need to make our people leave.'
),

-----------------------------------------------
-- Diplomacy Text: Trade
-----------------------------------------------	

-- AI Accepts Deal (HAPPY)
(
    'en_US', 'LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_PATCHERESU_SOLUS_HAPPY',
    'Tlazohcamati! We are in agreement!'
),

-- AI Accepts Deal (Unhappy)
(
    'en_US',
    'LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_PATCHERESU_SOLUS_UNHAPPY',
    'Kuali ikimeh. Though we see that this bargain provides more benefit to your people than our tlakah.'
),

-- AI Rejects Deal (HAPPY)
(
    'en_US', 'LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_PATCHERESU_SOLUS_HAPPY',
    'Nimitztlatlauhtia. We must find a trade with mutual benefit.'
),

-- AI Rejects Deal (Unhappy)
(
    'en_US',
    'LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_PATCHERESU_SOLUS_UNHAPPY',
    'Ximocahcahua! You must do better, or these talks will come to an unhappy end.'
),

-----------------------------------------------
-- Diplomacy Text: Denounce
-----------------------------------------------	

-- Human denounce, AI responds
(
    'en_US', 'LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_PATCHERESU_SOLUS_ANY',
    'To declare yourself an enemy of the Olmec is to leave your fate to the Gods.'
),

-- From AI
(
    'en_US', 'LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_PATCHERESU_SOLUS_ANY',
    'Our shamans have visions of your mikistli. The Olmec Gods press us to offer you as a sacrifice. (Denounces You)'
),

-----------------------------------------------
-- Diplomacy Text: Declarations of War
-----------------------------------------------	

-- Human Declares War, AI responds
(
    'en_US', 'LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_PATCHERESU_SOLUS_ANY',
    'Our lands are protected by our Gods. Your decision will lead you to your tomb.'
),

-- AI Declares War
(
    'en_US', 'LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_PATCHERESU_SOLUS_ANY',
    'The Gods have demanded the sacrifice of your people...and I agree with them. Inin kitosneki yaoyotl!'
),

-----------------------------------------------
-- Diplomacy Text: Make Peace
-----------------------------------------------	

-- AI accepts from human
(
    'en_US', 'LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_PATCHERESU_SOLUS_ANY',
    'Tlauel yektli. Let our people return to a peaceful existence.'
),

-- AI refuses human
(
    'en_US', 'LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_PATCHERESU_SOLUS_ANY',
    'The land on which you settle is ours by right and it will be ours by might!'
),

-- AI requests from human
(
    'en_US', 'LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_PATCHERESU_SOLUS_ANY',
    'Both sides grow weary of this continued struggle. Let us etch a new, peaceful chapter in our histories.'
),

-----------------------------------------------
-- Diplomacy Text: Defeat
-----------------------------------------------	

-- AI is Defeated
(
    'en_US', 'LOC_DIPLO_DEFEAT_FROM_AI_LEADER_PATCHERESU_SOLUS_ANY',
    'Your fate is not cemented by this victory. The Olmec Gods will take their sacrifice in time!'
),

-- Human is Defeated (will see this in hotseat)
(
    'en_US', 'LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_PATCHERESU_SOLUS_ANY',
    '{LOC_DIPLO_DEFEAT_FROM_AI_LEADER_PATCHERESU_SOLUS_ANY}'
),

--------------------------------------------------------------------
-- Leader Quote and Civilopedia Text
--------------------------------------------------------------------

(
    'en_US', 'LOC_PEDIA_LEADERS_PAGE_PATCHERESU_SOLUS_QUOTE',
    'No lands must remain beyond our grasp. Go forth. Conquer. Rule.'
),

(
    'en_US', 'LOC_PEDIA_LEADERS_PAGE_PATCHERESU_SOLUS_TITLE',
    'Solus zos Galvus'
),

(
    'en_US', 'LOC_PEDIA_LEADERS_PAGE_PATCHERESU_SOLUS_SUBTITLE',
    'Emperor of Garlemald'
),

(
    'en_US',
    'LOC_PEDIA_LEADERS_PAGE_LEADER_PATCHERESU_SOLUS_CHAPTER_CAPSULE_BODY',
    'The Olmec people would seek out territory to settle across vast expanses of terrain. Their settlers and those who cultivate the land were skilled at maintaining a significant amount of territory.'
),

(
    'en_US',
    'LOC_PEDIA_LEADERS_PAGE_LEADER_PATCHERESU_SOLUS_CHAPTER_DETAILED_BODY',
    'In the early formative stages, it is wise to exploit the Olmec`s ability to travel  larger distances and expand your territory. After an initial period of expansion, it is wise to harness the Olmec`s unique improvement, the Colossal Head, to maximise the [ICON_Faith] Faith and [ICON_Science] Science yields of your settlements. Moving further through the ages, the Olmec`s distinctions converge with other civilizations - though the initial land-grab should position the empire well to maintain a position of power throughout.'
),

(
    'en_US',
    'LOC_PEDIA_LEADERS_PAGE_LEADER_PATCHERESU_SOLUS_CHAPTER_HISTORY_PARA_1',
    'The Olmec King was usually referred to as Tu. The Olmec term for governor was Ku. Interestingly, some of the Olmec rulers were referred to as the Ku and Tu. This may suggest that the Olmec civilization may have been organized into a confederation of city-states lead by a recognized emperor.'
),
(
    'en_US',
    'LOC_PEDIA_LEADERS_PAGE_LEADER_PATCHERESU_SOLUS_CHAPTER_HISTORY_PARA_2',
    'Between 900-600 BCE, one of the major rulers at Guerrero was Po Ngbe. There is also an important tablet from Ahuelican, Guerrero of mottled green stone that also mentions King Po Ngbe, and his building of a great temple at his site.'
),
(
    'en_US',
    'LOC_PEDIA_LEADERS_PAGE_LEADER_PATCHERESU_SOLUS_CHAPTER_HISTORY_PARA_3',
    'The Guerrero celt makes it clear that Po Ngbe was recognized as a member of the craftsmen caste. He was ruler of the place where these artifacts were found. This celt also makes it clear that Po Ngbe was probably buried in a pyramid. This view is supported by the Ahuelican, Guerrero Tablet. This artifact was made of the same stone as the Teo mask and the Guerrero celt.'
),
(
    'en_US',
    'LOC_PEDIA_LEADERS_PAGE_LEADER_PATCHERESU_SOLUS_CHAPTER_HISTORY_PARA_4',
    'Recently a mask of Po Ngbe was recently discovered and published. The mask of Po Ngbe has an inscription written on the inside of the mask.'
),
(
    'en_US',
    'LOC_PEDIA_LEADERS_PAGE_LEADER_PATCHERESU_SOLUS_CHAPTER_HISTORY_PARA_5',
    'In the first column of the Teo Mask inscription we read the following: `Cause (here) the conferring of all virtue to this very good abode. Admiration indeed (Oh) Governor. Indeed (you are) wonder. Thou (art) a spirit of tranquility. (Thou art like) the Jaguar (a master of the bush). Righteousness takes root here in this tomb of Na Po Ngbe. This habitation of the devotee (is) a habitation of propriety. Order (Na Po Ngbe) this object of respect to be an envoy on a mission (to) hold upright purity. He who is a powerful spirit (in) thine tomb. Righteousness takes root here (in your) tomb. [Na Po Ngbe] A boundless source of great spiritual tranquility (your) abode. The tomb is powerful. Lay low (the celebrity) [in the tomb] to realize spiritual tranquility`.'
),

(
    'en_US',
    'LOC_PEDIA_UNITS_PAGE_UNIT_PATCHERESU_SOLUS_UU_CHAPTER_HISTORY_PARA_1',
    'There are many theories and associations that swirl around the were-jaguar motif, and they need not be not mutually exclusive. It is possible that were-jaguars meant different things at different times during the Olmec period or to the many different people who created the images. It is known that the elite warriors within the Olmec military would celebrate the were-jaguars as fierce deities and channel their might by adorning masks resembling these creatures.'
);
