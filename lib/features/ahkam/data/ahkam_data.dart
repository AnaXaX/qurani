import 'models/hukm.dart';

const List<AhkamCategory> ahkamCategories = [
  // 1. Taharah (Purification)
  AhkamCategory(
    id: 'taharah',
    title: 'Taharah (Purification)',
    titleArabic: 'الطهارة',
    icon: IconType.taharah,
    topics: [
      AhkamTopic(
        title: 'Wudu (Ablution)',
        titleArabic: 'الوضوء',
        summary: 'Wudu is the Islamic ritual washing performed before prayer. It involves washing specific body parts in a prescribed order.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Four fard acts: washing face, arms to elbows, wiping 1/4 of head, washing feet. Rubbing (dalk) is not required.', dalil: 'Quran 5:6'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Seven fard acts including niyyah (intention) and rubbing (dalk) of washed limbs. Wiping entire head is obligatory.', dalil: 'Quran 5:6, Hadith on intention (Bukhari 1)'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Six fard acts including niyyah and tartib (order). Wiping part of the head suffices.', dalil: 'Quran 5:6, Muslim 226'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Similar to Shafi\'i with tartib and muwalah (continuity) required. Must wipe entire head.', dalil: 'Quran 5:6, Abu Dawud 135'),
        ],
        keyPoints: [
          'All schools agree on washing face, arms, wiping head, and washing feet',
          'Schools differ on whether intention (niyyah) is a pillar or sunnah',
          'The order (tartib) of washing is fard in Shafi\'i and Hanbali, sunnah in Hanafi and Maliki',
        ],
      ),
      AhkamTopic(
        title: 'Ghusl (Ritual Bath)',
        titleArabic: 'الغسل',
        summary: 'Ghusl is the full-body ritual purification required after janabah (sexual impurity), menstruation, and postpartum bleeding.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Three fard acts: rinsing mouth, rinsing nose, and washing entire body. Intention is sunnah, not fard.', dalil: 'Quran 5:6, Bukhari 248'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Five fard acts including niyyah, rubbing body (dalk), continuity (muwalah), and reaching water to all body parts.', dalil: 'Quran 4:43, Muslim 316'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Two fard acts: niyyah and washing entire body including mouth and nose (which are part of the face).', dalil: 'Bukhari 248, Muslim 316'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Niyyah and washing entire body are fard. Rinsing mouth and nose are also obligatory as they are part of the face.', dalil: 'Bukhari 248, Abu Dawud 245'),
        ],
        keyPoints: [
          'All agree ghusl is required after janabah, menstruation, and postpartum bleeding',
          'Difference on whether rinsing mouth/nose is fard or sunnah in ghusl',
          'Ghusl on Friday for Jumuah is sunnah mu\'akkadah according to majority',
        ],
      ),
      AhkamTopic(
        title: 'Tayammum (Dry Ablution)',
        titleArabic: 'التيمم',
        summary: 'Tayammum is the substitute for wudu or ghusl using clean earth/dust when water is unavailable or harmful.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Two strikes: one for face, one for arms to elbows. Valid with any clean earthly material (soil, sand, stone, even walls).', dalil: 'Quran 4:43, Bukhari 338'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'One strike suffices for both face and hands to wrists. Must use earth or what grows from it. Niyyah required.', dalil: 'Quran 5:6, Abu Dawud 321'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Two strikes: face and arms to elbows. Must use actual soil/dust (turab) that has particles. Niyyah and tartib required.', dalil: 'Quran 4:43, Muslim 368'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'One strike for face and hands to wrists only. Must use soil with dust. Breaks with same things that break wudu plus finding water.', dalil: 'Bukhari 338, Abu Dawud 318'),
        ],
        keyPoints: [
          'Permitted when water is unavailable, too far, or using it would cause harm',
          'Schools differ on number of strikes and how far to wipe arms',
          'All agree it substitutes for wudu completely until water is found',
        ],
      ),
      AhkamTopic(
        title: 'Wiping Over Socks (Khuffayn)',
        titleArabic: 'المسح على الخفين',
        summary: 'Islam permits wiping over leather socks or footwear during wudu instead of washing feet, under specific conditions.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Permitted for 24 hours for resident, 72 hours for traveler. Must cover ankles. Can be leather or thick fabric socks that hold shape.', dalil: 'Muslim 276, Tirmidhi 95'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Permitted for leather khuff only, not fabric socks. No time limit — until removed or ghusl needed. Must cover the obligatory area.', dalil: 'Bukhari 203, Muwatta Malik'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Permitted for 24 hours (resident) and 72 hours (traveler). Must be leather or similar opaque material that covers ankles.', dalil: 'Muslim 276, Tirmidhi 95'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Permitted for 24/72 hours. Extends to thick cotton socks that hold shape and cover the foot. Most lenient on sock material.', dalil: 'Muslim 276, Abu Dawud 159'),
        ],
        keyPoints: [
          'Must put on socks/khuff while in a state of wudu',
          'Time period starts from first wiping after hadath (breaking wudu)',
          'Schools differ significantly on what material qualifies for wiping',
        ],
      ),
      AhkamTopic(
        title: 'Impurities (Najasah)',
        titleArabic: 'النجاسات',
        summary: 'Najasah refers to ritual impurities that must be removed from body, clothing, and prayer area before salah.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Impurities categorized as heavy (blood, urine, wine) and light (horse urine, bird droppings). Light najasah tolerated up to 1/4 of garment.', dalil: 'Bukhari 227, Various ahadith'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Broadly similar categories. Dog saliva requires washing 7 times. Small amounts of najasah that are difficult to avoid may be excused.', dalil: 'Muslim 279, Bukhari 172'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Strictest on impurity removal. Dog contact requires 7 washes, one with earth/soap. Even small amounts invalidate prayer.', dalil: 'Muslim 279, Bukhari 172'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Similar to Shafi\'i on dog (7 washes + earth). Cat saliva is pure. Small splashes of urine that are hard to avoid may be forgiven.', dalil: 'Muslim 279, Tirmidhi 92'),
        ],
        keyPoints: [
          'Human urine, blood, and stool are impure by consensus',
          'Cat saliva is considered pure by majority based on hadith of Abu Qatadah',
          'Schools differ on the ruling of dog saliva and amount of impurity tolerated',
        ],
      ),
      AhkamTopic(
        title: 'Menstruation Rules (Hayd)',
        titleArabic: 'أحكام الحيض',
        summary: 'Islamic law addresses the minimum and maximum duration of menstruation, acts prohibited during hayd, and when ghusl becomes obligatory.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Minimum hayd: 3 days. Maximum: 10 days. Minimum purity between two cycles: 15 days. Prayer and fasting are prohibited.', dalil: 'Various ahadith, Daraqutni'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'No minimum duration. Maximum: 15 days for regular women. Pregnant women can menstruate. Istihada (irregular bleeding) distinguished by habit.', dalil: 'Bukhari 320, Muslim 333'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Minimum hayd: 1 day and 1 night. Maximum: 15 days. Normal: 6-7 days. Distinguished from istihada by color and timing.', dalil: 'Muslim 333, Abu Dawud 287'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Minimum hayd: 1 day. Maximum: 15 days. Usual: 6-7 days. Pregnant women do not menstruate (blood is istihada).', dalil: 'Bukhari 320, Various reports'),
        ],
        keyPoints: [
          'All agree: salah is excused and not made up; fasting is excused but must be made up',
          'Sexual intercourse is prohibited by consensus during menstruation (Quran 2:222)',
          'Ghusl is required when menstruation ends before resuming prayer',
        ],
      ),
      AhkamTopic(
        title: 'Istinja (Cleaning After Relieving)',
        titleArabic: 'الاستنجاء',
        summary: 'Istinja is the act of cleaning the private parts after using the toilet, using water or dry materials.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Water is preferred (sunnah). Stones/tissue also valid if impurity hasn\'t spread beyond exit point. Minimum 3 wipes with stones.', dalil: 'Muslim 262, Bukhari 154'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Stones suffice if impurity hasn\'t spread. Using water is better. Left hand should be used for cleaning.', dalil: 'Bukhari 154, Muslim 262'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Both water and stones are permissible. Minimum 3 wipes with stones required. Using water is more complete and preferred.', dalil: 'Muslim 262, Tirmidhi 16'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Stones (or equivalent) minimum 3 wipes. Water is preferred. Combining both is best. Using bones or dung is prohibited.', dalil: 'Muslim 262, Bukhari 154'),
        ],
        keyPoints: [
          'All agree istinja is obligatory when impurity exits',
          'Using the right hand for cleaning is prohibited',
          'Modern tissue paper counts as a substitute for stones',
        ],
      ),
    ],
  ),

  // 2. Salah (Prayer)
  AhkamCategory(
    id: 'salah',
    title: 'Salah (Prayer)',
    titleArabic: 'الصلاة',
    icon: IconType.salah,
    topics: [
      AhkamTopic(
        title: 'Obligatory Prayers',
        titleArabic: 'الصلوات المفروضة',
        summary: 'Five daily prayers are obligatory upon every sane, adult Muslim. The number of rak\'ahs and their timings are agreed upon.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Fajr (2), Dhuhr (4), Asr (4), Maghrib (3), Isha (4). Witr is wajib (obligatory but lesser than fard), 3 rak\'ahs with one salam.', dalil: 'Bukhari 528, Muslim 612'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Same five prayers. Witr is sunnah mu\'akkadah, 1 rak\'ah after shaf\' (2 rak\'ahs). Bismillah is not recited aloud in prayer.', dalil: 'Bukhari 528, Muwatta Malik'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Same five prayers. Witr is sunnah mu\'akkadah, minimum 1 rak\'ah and maximum 11. Bismillah is part of al-Fatihah and recited aloud.', dalil: 'Bukhari 528, Muslim 612'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Same five prayers. Witr is sunnah mu\'akkadah, minimum 1 rak\'ah. Best is to pray it as separate units with a final single rak\'ah.', dalil: 'Bukhari 528, Abu Dawud 1422'),
        ],
        keyPoints: [
          'All schools agree on the 5 daily prayers and their rak\'ah counts',
          'The main difference is the status of Witr prayer: wajib (Hanafi) vs sunnah (others)',
          'Timing of Asr: Hanafi says when shadow is 2x the object; majority says 1x',
        ],
      ),
      AhkamTopic(
        title: 'Combining Prayers (Jam\')',
        titleArabic: 'الجمع بين الصلاتين',
        summary: 'Combining Dhuhr with Asr, or Maghrib with Isha, during the time of either prayer is permitted under certain conditions.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Combining is NOT permitted except at Arafah (Dhuhr+Asr) and Muzdalifah (Maghrib+Isha) during Hajj only. Travel does not permit combining.', dalil: 'Their reading of Quran 4:103, various opinions'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Permitted during travel (jam\' taqdim or ta\'khir). Also permitted for rain, illness, and mud. Not for mere convenience.', dalil: 'Muslim 705, Bukhari 1107'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Permitted during travel, rain, illness, and fear. Both jam\' taqdim (advancing) and ta\'khir (delaying) are valid.', dalil: 'Muslim 705, Bukhari 1107'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Permitted during travel, illness, rain, extreme cold, fear, and for one who has excused continuous impurity (istihada).', dalil: 'Muslim 705, Bukhari 543'),
        ],
        keyPoints: [
          'Hanafi school is the most restrictive, only allowing combining during Hajj',
          'Other three schools permit combining during travel with various additional excuses',
          'All agree Fajr cannot be combined with any other prayer',
        ],
      ),
      AhkamTopic(
        title: 'Prayer While Traveling',
        titleArabic: 'صلاة المسافر',
        summary: 'A traveler may shorten 4-rak\'ah prayers to 2 rak\'ahs (qasr). Schools differ on the distance and duration that qualifies.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Travel distance: approx. 3 days\' journey (~80 km). Qasr is wajib (obligatory), not optional. If praying behind a resident imam, must pray 4.', dalil: 'Quran 4:101, Bukhari 1102'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Travel distance: approx. 4 burud (~80 km). Qasr is sunnah mu\'akkadah, very strongly recommended. Max stay: 4 days before becoming resident.', dalil: 'Quran 4:101, Muslim 693'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Travel distance: approx. 2 marhalah (~80 km). Qasr is a concession (rukhsah), permissible but praying full is better. Max stay: 4 days.', dalil: 'Quran 4:101, Bukhari 1102'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Travel distance: ~80 km. Qasr is sunnah. A traveler who intends to stay more than 4 days prays full. May shorten even when praying alone.', dalil: 'Quran 4:101, Abu Dawud 1210'),
        ],
        keyPoints: [
          'All agree the 4-rak\'ah prayers (Dhuhr, Asr, Isha) become 2 rak\'ahs while traveling',
          'Fajr (2) and Maghrib (3) are never shortened',
          'The travel distance is approximately 80 km in all schools',
        ],
      ),
      AhkamTopic(
        title: 'Friday Prayer (Jumuah)',
        titleArabic: 'صلاة الجمعة',
        summary: 'Jumuah prayer replaces Dhuhr on Friday and is an individual obligation upon adult Muslim men who are residents.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Conditions: male, resident, free, healthy, sane, adult. Minimum congregation: 3 (besides imam). Two khutbahs required before 2-rak\'ah prayer.', dalil: 'Quran 62:9, Bukhari 876'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Valid in any settlement with 12+ resident men. Khutbah is a condition. Traveler is not obligated but may attend. Women may attend.', dalil: 'Quran 62:9, Muslim 856'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Minimum congregation: 40 resident adult Muslim men. Two khutbahs with pillars (praise, salawat, advice, Quran). Must be in a settled area.', dalil: 'Quran 62:9, Bayhaqi'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Minimum congregation: 40 men. Khutbah with praise of Allah, salawat, and Quran recitation. Traveler is not obligated.', dalil: 'Quran 62:9, Abu Dawud 1067'),
        ],
        keyPoints: [
          'All agree Jumuah is fard ayn (individual obligation) on Muslim men',
          'Women, travelers, sick, and children are excused',
          'Main difference is the minimum number of congregants required',
        ],
      ),
      AhkamTopic(
        title: 'Prostration of Forgetfulness (Sujud al-Sahw)',
        titleArabic: 'سجود السهو',
        summary: 'Two additional prostrations performed to compensate for errors in prayer such as adding, omitting, or doubting the number of rak\'ahs.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Sujud al-sahw is wajib for any wajib act left or additional act done. Performed AFTER salam (salam then 2 sajdah then tashahhud then salam).', dalil: 'Bukhari 1227, Muslim 572'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Performed BEFORE salam for omissions and AFTER salam for additions. For both addition and omission together, done before salam.', dalil: 'Muslim 572, Bukhari 1227'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Sujud al-sahw is sunnah, performed BEFORE salam in all cases. Build on certainty (lower number) when in doubt about rak\'ah count.', dalil: 'Muslim 571, Bukhari 1227'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Performed BEFORE salam for omissions, AFTER salam for additions, and BEFORE salam for doubt (take lower number).', dalil: 'Bukhari 1227, Muslim 572'),
        ],
        keyPoints: [
          'All agree it compensates for unintentional errors in prayer',
          'Schools differ on whether it comes before or after the final salam',
          'Deliberate errors cannot be fixed by sujud al-sahw',
        ],
      ),
      AhkamTopic(
        title: 'Making Up Missed Prayers (Qada)',
        titleArabic: 'قضاء الصلوات الفائتة',
        summary: 'A Muslim who misses an obligatory prayer must make it up as soon as possible. Schools agree on the obligation but differ on details.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Qada is obligatory immediately. Must maintain order (tartib) if missed prayers are 5 or fewer. Order drops if more than 5 missed.', dalil: 'Bukhari 597, Muslim 684'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Qada is obligatory. Must make up in order (tartib) as long as one remembers. The missed prayer takes priority over the current one if time permits.', dalil: 'Bukhari 597, Muwatta Malik'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Qada is obligatory immediately (fawran). Order is recommended but not required. One who deliberately abandoned prayer must still make it up.', dalil: 'Bukhari 597, Muslim 684'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Qada is obligatory immediately. Order (tartib) is required. One who deliberately leaves prayer has committed a major sin but still makes it up.', dalil: 'Bukhari 597, Abu Dawud 442'),
        ],
        keyPoints: [
          'All four schools agree that missed obligatory prayers must be made up',
          'Sleeping through or genuinely forgetting a prayer is not sinful, but it must still be made up',
          'Maintaining the original order of prayers when making them up is preferred',
        ],
      ),
    ],
  ),

  // 3. Sawm (Fasting)
  AhkamCategory(
    id: 'sawm',
    title: 'Sawm (Fasting)',
    titleArabic: 'الصيام',
    icon: IconType.sawm,
    topics: [
      AhkamTopic(
        title: 'Things That Break the Fast',
        titleArabic: 'مفسدات الصيام',
        summary: 'Certain actions intentionally done during fasting hours invalidate the fast. Schools differ on some items.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Eating, drinking, sexual intercourse, deliberate vomiting that fills the mouth. Injections and eye drops do NOT break the fast.', dalil: 'Bukhari 1936, Quran 2:187'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Eating, drinking, intercourse, deliberate vomiting. Any substance reaching the throat/stomach breaks the fast including nose drops.', dalil: 'Bukhari 1936, Quran 2:187'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Any substance deliberately entering a body cavity breaks the fast. This includes ear drops, eye drops (if taste is felt in throat), and injections.', dalil: 'Bukhari 1936, various narrations'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Eating, drinking, intercourse, cupping (hijamah breaks fast for both parties). Nutritional injections break the fast; non-nutritional do not.', dalil: 'Bukhari 1936, Abu Dawud 2367'),
        ],
        keyPoints: [
          'All agree: intentional eating, drinking, and intercourse break the fast',
          'Forgetful eating does not break the fast (hadith in Bukhari and Muslim)',
          'Modern medical issues (injections, inhalers) are debated among scholars',
        ],
      ),
      AhkamTopic(
        title: 'Fidyah and Kaffarah',
        titleArabic: 'الفدية والكفارة',
        summary: 'Fidyah is feeding a poor person per missed day. Kaffarah is the penalty for deliberately breaking a fast with intercourse.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Kaffarah for deliberate eating/drinking in Ramadan too (not just intercourse): free a slave, or fast 60 consecutive days, or feed 60 poor people.', dalil: 'Bukhari 1936, Abu Hanifah\'s ruling'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Kaffarah for deliberate breaking by eating, drinking, or intercourse. Feed 60 poor people OR fast 60 days OR free a slave (any order).', dalil: 'Bukhari 1936, Muslim 1111'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Kaffarah ONLY for intercourse during Ramadan fast. For deliberate eating/drinking: only qada (make up) is required, not kaffarah.', dalil: 'Bukhari 1936, Muslim 1111'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Kaffarah only for intercourse. Must follow order: free slave, then fast 60 days, then feed 60 people. Eating deliberately requires only qada.', dalil: 'Bukhari 1936, Muslim 1111'),
        ],
        keyPoints: [
          'Fidyah (feeding one poor person/day) is for those permanently unable to fast (elderly, chronic illness)',
          'Kaffarah for intercourse during Ramadan fast is agreed upon by all schools',
          'Hanafi and Maliki extend kaffarah to deliberate eating; Shafi\'i and Hanbali limit it to intercourse',
        ],
      ),
      AhkamTopic(
        title: 'Fasting While Traveling',
        titleArabic: 'صيام المسافر',
        summary: 'A traveler has the option to break the fast during Ramadan and make up the days later. Schools differ on what is preferred.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Fasting while traveling is better if it does not cause hardship. Breaking is a concession (rukhsah). Must make up missed days.', dalil: 'Quran 2:185, Bukhari 1943'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Fasting is better than breaking for the traveler who can bear it. Breaking is permissible but fasting is more rewarding.', dalil: 'Quran 2:185, Muslim 1115'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Breaking is merely a concession. Fasting is better for one who can tolerate it. If fasting causes extreme hardship, breaking is better.', dalil: 'Quran 2:185, Bukhari 1943'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Breaking the fast while traveling is preferable to fasting, as it is taking Allah\'s concession. But fasting is also valid.', dalil: 'Quran 2:185, Muslim 1114'),
        ],
        keyPoints: [
          'All agree the traveler has a valid choice between fasting and breaking',
          'The same travel distance for shortening prayer applies (~80 km)',
          'Missed days must be made up before the next Ramadan',
        ],
      ),
      AhkamTopic(
        title: 'Intention for Fasting (Niyyah)',
        titleArabic: 'نية الصيام',
        summary: 'The intention to fast is required, but schools differ on when it must be made and whether it must be renewed daily.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Intention anytime before zawal (midday) is valid for Ramadan fasting. One intention at the start of Ramadan covers the whole month.', dalil: 'Hadith "Actions are by intentions" Bukhari 1, various reports'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Intention must be made before Fajr for obligatory fasts. One intention at the start of Ramadan is sufficient for the whole month.', dalil: 'Bukhari 1, Nasa\'i 2331'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Intention must be made EACH NIGHT before Fajr for each day of obligatory fasting. A general intention does not suffice.', dalil: 'Abu Dawud 2454, Nasa\'i 2331'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Intention must be made before Fajr for obligatory fasts. One intention at the beginning of Ramadan suffices if fasting is continuous.', dalil: 'Bukhari 1, Abu Dawud 2454'),
        ],
        keyPoints: [
          'All agree intention is required for fasting to be valid',
          'Shafi\'i requires nightly renewal of intention; others allow a single intention for Ramadan',
          'For voluntary (nafl) fasting, most schools allow intention up to midday',
        ],
      ),
      AhkamTopic(
        title: 'Pregnant and Nursing Women',
        titleArabic: 'الحامل والمرضع',
        summary: 'Pregnant and breastfeeding women may break their Ramadan fast if they fear harm to themselves or their child.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'May break the fast if fearing harm. Must make up the days (qada only). No fidyah required.', dalil: 'Quran 2:185, Ibn Abbas narration'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'May break the fast. Must make up days. If breaking due to fear for child only (not herself), must also pay fidyah (feed one poor person per day).', dalil: 'Quran 2:185, various Maliki texts'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'May break the fast for fear of harm. If fear is for herself: qada only. If fear is for child: qada plus fidyah per day.', dalil: 'Quran 2:185, Shafi\'i in al-Umm'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'May break the fast. If fear is for herself or both: qada only. If fear is only for the child: qada plus fidyah.', dalil: 'Quran 2:185, narration of Ibn Abbas'),
        ],
        keyPoints: [
          'All schools agree pregnant/nursing women may break the fast when fearing harm',
          'All agree they must make up missed days',
          'The main difference is whether fidyah is additionally required',
        ],
      ),
    ],
  ),

  // 4. Zakat
  AhkamCategory(
    id: 'zakat',
    title: 'Zakat',
    titleArabic: 'الزكاة',
    icon: IconType.zakat,
    topics: [
      AhkamTopic(
        title: 'Nisab Thresholds',
        titleArabic: 'نصاب الزكاة',
        summary: 'Nisab is the minimum amount of wealth one must possess for zakat to become obligatory, held for one lunar year (hawl).',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Gold: 87.48g (20 mithqal). Silver: 612.36g (200 dirhams). Cash nisab follows the LOWER of gold/silver value (usually silver).', dalil: 'Abu Dawud 1573, various ahadith'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Gold: 85g. Silver: 595g. Cash follows gold nisab. Wealth must remain at or above nisab for the entire lunar year.', dalil: 'Bukhari 1459, Muslim 979'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Gold: 85g. Silver: 595g. Cash follows the metal it is based on. Hawl (year) must pass while wealth remains above nisab.', dalil: 'Bukhari 1459, Muslim 979'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Gold: 85g. Silver: 595g. Cash uses gold nisab as standard. If wealth dips below nisab mid-year, the hawl restarts.', dalil: 'Bukhari 1459, Abu Dawud 1573'),
        ],
        keyPoints: [
          'Zakat rate on gold, silver, and cash is 2.5% per lunar year',
          'Wealth must be above nisab for a full lunar year before zakat is due',
          'Practical difference: Hanafi uses silver nisab for cash (lower threshold = more people pay zakat)',
        ],
      ),
      AhkamTopic(
        title: 'Zakat al-Fitr',
        titleArabic: 'زكاة الفطر',
        summary: 'Zakat al-Fitr is an obligatory charity paid at the end of Ramadan before Eid prayer, purifying the fasting person.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Amount: one sa\' of wheat (approx. 3.3 kg) or half a sa\'. Cash payment is permitted and even preferred for the benefit of the poor.', dalil: 'Bukhari 1503, Abu Dawud 1609'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'One sa\' (~2.6 kg) of the staple food of the region. Must be food, not cash. Best given from dates, barley, wheat, raisins, or local staple.', dalil: 'Bukhari 1503, Muslim 985'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'One sa\' (~2.6 kg) of the staple food of the area. Must be food, not cash. Due for every Muslim including dependents (children, elderly).', dalil: 'Bukhari 1503, Muslim 985'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'One sa\' of food (dates, barley, wheat, raisins, cheese). Food is required, not cash. Paid per person in the household.', dalil: 'Bukhari 1503, Muslim 985'),
        ],
        keyPoints: [
          'All agree it is obligatory on every Muslim who has surplus food for Eid day',
          'Must be paid before Eid prayer; paying after is still valid but loses its virtue',
          'Hanafi school uniquely allows cash payment; others require food',
        ],
      ),
      AhkamTopic(
        title: 'Who Receives Zakat',
        titleArabic: 'مصارف الزكاة',
        summary: 'The Quran specifies eight categories of eligible zakat recipients in Surah At-Tawbah 9:60.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'All 8 categories valid. Can give to one category only. Cannot give to Banu Hashim (Prophet\'s family). Cannot give to one\'s dependents.', dalil: 'Quran 9:60, various ahadith'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'All 8 categories. Prioritize those in most need. Cannot give to parents, children, or spouse. "Fi sabilillah" means jihad specifically.', dalil: 'Quran 9:60, Muwatta Malik'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Must distribute to all 8 categories if present. Cannot give to those one is obligated to support (parents, children, spouse).', dalil: 'Quran 9:60, Shafi\'i in al-Umm'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'All 8 categories, can give to one or more. "Fi sabilillah" primarily means jihad but some extend it. Cannot give to dependents.', dalil: 'Quran 9:60, Bukhari 1468'),
        ],
        keyPoints: [
          'The 8 categories: poor, needy, zakat collectors, new Muslims, freeing slaves, debtors, in the way of Allah, travelers',
          'All agree zakat cannot be given to one\'s own parents, children, or spouse',
          'Shafi\'i school uniquely requires distribution among all 8 categories',
        ],
      ),
      AhkamTopic(
        title: 'Zakat on Trade Goods',
        titleArabic: 'زكاة عروض التجارة',
        summary: 'Goods purchased with the intention of resale (trade inventory) are subject to zakat based on their market value.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Zakat due on trade goods at 2.5% of market value at year-end. Intention to trade must exist at time of acquisition.', dalil: 'Abu Dawud 1562, general principles'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Zakat due on trade goods when sold (not annually while held). Rate is 2.5% of sale price. Must be actively trading.', dalil: 'Muwatta Malik, Maliki fiqh texts'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Zakat due annually on trade goods at 2.5% of market value. Intention to trade at time of acquisition. Valued at year-end.', dalil: 'Abu Dawud 1562, Bayhaqi'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Zakat due annually at 2.5% of market value. Must have trade intention from acquisition. Goods valued at end of hawl.', dalil: 'Abu Dawud 1562, various narrations'),
        ],
        keyPoints: [
          'Trade goods are those bought with the explicit intention of resale for profit',
          'Personal assets (car, home, furniture) are not subject to zakat',
          'The value is calculated at current market price, not purchase price',
        ],
      ),
    ],
  ),

  // 5. Hajj
  AhkamCategory(
    id: 'hajj',
    title: 'Hajj (Pilgrimage)',
    titleArabic: 'الحج',
    icon: IconType.hajj,
    topics: [
      AhkamTopic(
        title: 'Obligations of Hajj',
        titleArabic: 'أركان الحج',
        summary: 'Hajj is obligatory once in a lifetime for every Muslim who has the physical and financial ability to perform it.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Pillars (arkan): wuquf at Arafah and majority of tawaf al-ziyarah. Wajibat include: sa\'i, wuquf at Muzdalifah, rami, halq/taqsir, tawaf al-wada\'.', dalil: 'Quran 3:97, Bukhari 1513'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Pillars: ihram, wuquf at Arafah, tawaf al-ifadah, sa\'i. Wajibat: ihram from miqat, rami, overnight at Muzdalifah/Mina, tawaf al-wada\'.', dalil: 'Quran 3:97, Muslim 1218'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Pillars: ihram (intention), wuquf at Arafah, tawaf al-ifadah, sa\'i, shaving/cutting hair, and tartib (order). Missing a pillar invalidates Hajj.', dalil: 'Quran 3:97, Muslim 1218'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Pillars: ihram, wuquf at Arafah, tawaf al-ifadah, sa\'i. Wajibat: ihram from miqat, staying at Muzdalifah, stoning, halq, tawaf al-wada\'.', dalil: 'Quran 3:97, Bukhari 1513'),
        ],
        keyPoints: [
          'All agree standing at Arafah is the most critical pillar — "Hajj is Arafah"',
          'Missing a rukn (pillar) cannot be compensated with a sacrifice; the act must be done',
          'Missing a wajib can be compensated by sacrificing an animal (fidyah)',
        ],
      ),
      AhkamTopic(
        title: 'Ihram Rules',
        titleArabic: 'أحكام الإحرام',
        summary: 'Ihram is the sacred state entered for Hajj or Umrah, involving specific clothing and prohibitions.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Men: two unstitched white cloths. Women: regular clothing (face and hands uncovered). Prohibited: perfume, cutting hair/nails, covering head (men), intercourse.', dalil: 'Bukhari 1542, Muslim 1177'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Same clothing rules. Women may wear any clothing but not niqab or gloves. Perfume, hunting, marriage contracts, and intercourse prohibited.', dalil: 'Bukhari 1542, Muslim 1177'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Men: two seamless cloths. Women: all clothing except face and hands must be covered. Prohibited: perfume, hair removal, nails, intercourse, hunting.', dalil: 'Bukhari 1542, Muslim 1177'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Men: unstitched cloths, no head covering. Women: all covered except face and hands. Same prohibitions. Penalty for violation varies by act.', dalil: 'Bukhari 1542, Muslim 1177'),
        ],
        keyPoints: [
          'Ihram is entered at designated miqat points before reaching Makkah',
          'The talbiyah ("Labbayk Allahumma labbayk") is recited upon entering ihram',
          'Violations require fidyah: feeding 6 poor, fasting 3 days, or sacrificing a sheep',
        ],
      ),
      AhkamTopic(
        title: 'Tawaf Rules',
        titleArabic: 'أحكام الطواف',
        summary: 'Tawaf is the circumambulation of the Ka\'bah seven times counterclockwise, starting from the Black Stone.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Wudu is wajib for tawaf (not a condition — valid without but sinful). 4+ rounds required (less invalidates). Raml (brisk walking) in first 3 for men.', dalil: 'Bukhari 1612, Muslim 1261'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Wudu is a condition for valid tawaf. All 7 rounds required. Must start from the Black Stone corner. Walking is preferred over riding.', dalil: 'Bukhari 1612, Muslim 1261'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Wudu is a strict condition. All 7 rounds from the Black Stone. Must be inside the Masjid al-Haram. Covering awrah is required.', dalil: 'Bukhari 1612, Tirmidhi 960'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Wudu is a condition. 7 complete rounds. Starting from the Black Stone line. Hateem (Hijr Ismail) must be included (go outside it).', dalil: 'Bukhari 1612, Muslim 1261'),
        ],
        keyPoints: [
          'Seven counterclockwise circuits are required by all schools',
          'The Hateem (Hijr Ismail) must be circled from outside, not cut through',
          'Hanafi school is most lenient on wudu — valid without it but disliked',
        ],
      ),
      AhkamTopic(
        title: 'Umrah Rules',
        titleArabic: 'أحكام العمرة',
        summary: 'Umrah is the minor pilgrimage consisting of ihram, tawaf, sa\'i, and shaving/cutting hair. Schools differ on its obligation.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Umrah is sunnah mu\'akkadah, not obligatory (wajib). Consists of ihram, tawaf, and sa\'i. Can be performed any time of year except the 5 days of Hajj.', dalil: 'Various ahadith, Hanafi position'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Umrah is sunnah mu\'akkadah, once in a lifetime. Pillars: ihram, tawaf, sa\'i. Can be performed anytime. Multiple umrahs not encouraged.', dalil: 'Muslim 1255, Maliki texts'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Umrah is OBLIGATORY (fard) once in a lifetime, like Hajj. Pillars: ihram, tawaf, sa\'i, shaving/cutting. Can be done anytime.', dalil: 'Bukhari 1773, narration from Ibn Abbas'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Umrah is OBLIGATORY (fard) once in a lifetime. Pillars: ihram, tawaf, sa\'i, halq/taqsir. Can be performed throughout the year.', dalil: 'Bukhari 1773, Ahmad ibn Hanbal'),
        ],
        keyPoints: [
          'Shafi\'i and Hanbali: Umrah is obligatory once; Hanafi and Maliki: it is sunnah',
          'All agree on the acts of Umrah: ihram, tawaf, sa\'i, and hair cutting',
          'The best time for Umrah is during Ramadan (reward equivalent to Hajj in hadith)',
        ],
      ),
    ],
  ),

  // 6. Nikah (Marriage)
  AhkamCategory(
    id: 'nikah',
    title: 'Nikah (Marriage)',
    titleArabic: 'النكاح',
    icon: IconType.nikah,
    topics: [
      AhkamTopic(
        title: 'Marriage Contract Conditions',
        titleArabic: 'شروط عقد النكاح',
        summary: 'The Islamic marriage contract (nikah) requires specific conditions for validity including offer, acceptance, and witnesses.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Pillars: offer (ijab) and acceptance (qabul). Wali (guardian) not required for adult woman. Two male Muslim witnesses required.', dalil: 'Quran 4:4, Bukhari 5136'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Pillars: wali, mahr, offer and acceptance. The wali is a condition for validity. Announcement (i\'lan) is required, even without formal witnesses.', dalil: 'Quran 4:4, Tirmidhi 1101'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Pillars: groom, bride, wali, two witnesses, and sighah (offer+acceptance). All five are essential. Wali is absolutely required.', dalil: 'Quran 4:4, Abu Dawud 2085'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Wali and two witnesses are conditions. Offer and acceptance must be in same sitting. Mahr is obligatory but its absence doesn\'t invalidate the contract.', dalil: 'Quran 4:4, Tirmidhi 1101'),
        ],
        keyPoints: [
          'All agree on offer (ijab) and acceptance (qabul) as fundamental elements',
          'Hanafi school uniquely allows an adult woman to marry herself without a wali',
          'Majority require a wali (male guardian) for the marriage to be valid',
        ],
      ),
      AhkamTopic(
        title: 'Mahr (Dowry)',
        titleArabic: 'المهر',
        summary: 'Mahr is the obligatory gift from the groom to the bride, her exclusive right. It can be immediate or deferred.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Minimum mahr: 10 dirhams (silver). No maximum. If not specified, the bride receives mahr al-mithl (equivalent to women of similar status).', dalil: 'Quran 4:4, Daraqutni'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Minimum mahr: 3 dirhams (or 1/4 dinar). Must have some value. Mahr is the bride\'s property; she can dispose of it freely.', dalil: 'Quran 4:4, Muwatta Malik'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'No minimum amount — anything of value suffices, even a ring or teaching Quran. Must be known and specified.', dalil: 'Quran 4:4, Bukhari 5087'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'No minimum — anything of value. Teaching Quran can serve as mahr. Mahr can be deferred (muajjal) partially or fully.', dalil: 'Quran 4:4, Muslim 1425'),
        ],
        keyPoints: [
          'Mahr is the right of the bride, not her family',
          'It can be paid immediately, deferred, or split between both',
          'Hanafi and Maliki set a minimum; Shafi\'i and Hanbali do not',
        ],
      ),
      AhkamTopic(
        title: 'Divorce (Talaq)',
        titleArabic: 'الطلاق',
        summary: 'Talaq is the Islamic dissolution of marriage initiated by the husband. It has specific rules regarding pronouncement and waiting period.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Triple talaq in one sitting counts as three (irrevocable). Talaq during menstruation is sinful but valid. Implied words count if intention exists.', dalil: 'Quran 2:229, Bukhari 5252'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Triple talaq in one sitting counts as three. Talaq during anger (extreme) may not count. Kinayah (implied) words need intention.', dalil: 'Quran 2:229, Muslim 1472'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Triple talaq in one sitting counts as three. Talaq in state of extreme anger (involuntary) doesn\'t count. Clear words take effect without intention.', dalil: 'Quran 2:229, Abu Dawud 2194'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Triple talaq in one sitting counts as ONE (revocable). Based on the hadith of Ibn Abbas. This is also the view of Ibn Taymiyyah.', dalil: 'Muslim 1472, narration of Ibn Abbas'),
        ],
        keyPoints: [
          'The sunnah method: one talaq during a period of purity (tuhr) without intercourse',
          'After two revocable divorces, the third is final and irrevocable',
          'After irrevocable divorce, remarriage requires the woman to marry and divorce another man naturally',
        ],
      ),
      AhkamTopic(
        title: 'Iddah (Waiting Period)',
        titleArabic: 'العدة',
        summary: 'Iddah is the mandatory waiting period a woman must observe after divorce or her husband\'s death before she can remarry.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Divorce: 3 menstrual cycles (haid). If no menses: 3 months. Death of husband: 4 months and 10 days. Pregnant: until delivery.', dalil: 'Quran 2:228, Quran 2:234, Quran 65:4'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Same periods. Post-menopausal: 3 months. If periods are irregular: wait up to 9 months then observe 3 months. Widow mourns (no adornment).', dalil: 'Quran 2:228, Quran 65:4'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Divorce: 3 periods of purity (quru\' = tuhr, not haid). Death: 4 months 10 days. Pregnant: until delivery. No menses: 3 months.', dalil: 'Quran 2:228, Quran 2:234'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Divorce: 3 menstrual cycles. Death: 4 months 10 days (even if pregnant, whichever is longer). If no menses: 3 months.', dalil: 'Quran 2:228, Quran 2:234'),
        ],
        keyPoints: [
          'The purpose of iddah includes: confirming pregnancy, mourning, and respecting the marriage bond',
          'A widow must observe iddah even if the marriage was not consummated',
          'For divorce without consummation, there is no iddah (Quran 33:49)',
        ],
      ),
    ],
  ),

  // 7. Food & Drink
  AhkamCategory(
    id: 'food',
    title: 'Food & Drink',
    titleArabic: 'الأطعمة والأشربة',
    icon: IconType.food,
    topics: [
      AhkamTopic(
        title: 'Halal Slaughter (Dhabihah)',
        titleArabic: 'الذبيحة الحلال',
        summary: 'Islamic slaughter requires cutting the throat, windpipe, and blood vessels while invoking the name of Allah.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Must cut at least 3 of 4 vessels (throat, windpipe, 2 jugulars). Tasmiyah (saying Bismillah) is a condition — forgetting it invalidates.', dalil: 'Quran 6:121, Bukhari 5498'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Must cut throat and jugulars. Tasmiyah is a condition. Intentionally omitting Bismillah makes the meat haram. Forgetting is excused.', dalil: 'Quran 6:121, Muwatta Malik'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Must cut throat (hulqum) and esophagus (mari\'). Tasmiyah is sunnah — meat is halal even without it (intentionally). Animal must be alive when cut.', dalil: 'Quran 5:3, Bukhari 5498'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Must cut throat and esophagus plus one jugular. Tasmiyah is a condition — deliberate omission makes it haram. Forgetting is excused.', dalil: 'Quran 6:121, Bukhari 5498'),
        ],
        keyPoints: [
          'All agree the animal must be alive at the time of slaughter',
          'Slaughter by People of the Book (Jews and Christians) is permissible (Quran 5:5)',
          'Key difference: Shafi\'i does not require Bismillah as a condition of validity',
        ],
      ),
      AhkamTopic(
        title: 'Seafood',
        titleArabic: 'المأكولات البحرية',
        summary: 'The permissibility of seafood varies among schools, from very permissive to more restrictive views on non-fish sea creatures.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Only fish is halal from the sea. Shrimp, crab, lobster, squid, and other sea creatures are NOT permissible. Dead fish floating is also not permissible.', dalil: 'Quran 5:96, Hanafi juristic preference'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'ALL sea creatures are halal without exception — fish, shrimp, crab, lobster, squid, octopus, whale, etc. No slaughter needed. Most permissive view.', dalil: 'Quran 5:96, hadith "Its water is pure and its dead are halal" (Tirmidhi 69)'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'ALL sea creatures are halal. Fish, shrimp, crab, lobster — all permissible. Anything from the sea is halal without slaughter.', dalil: 'Quran 5:96, Tirmidhi 69'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'All fish are halal. Creatures that live only in water are halal. Amphibians (like frogs) are not permissible. Crocodile is debated.', dalil: 'Quran 5:96, Tirmidhi 69'),
        ],
        keyPoints: [
          'All agree that fish is halal and does not require Islamic slaughter',
          'Hanafi school is the most restrictive, limiting seafood to fish only',
          'Maliki and Shafi\'i are the most permissive — all sea creatures are halal',
        ],
      ),
      AhkamTopic(
        title: 'Interest (Riba)',
        titleArabic: 'الربا',
        summary: 'Riba (interest/usury) is strictly prohibited in Islam. All four schools agree on its prohibition but differ on some modern applications.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Riba is absolutely haram. Applies to loans with interest and unequal exchange of ribawi goods. Some modern scholars permit interest in non-Muslim lands (weaker position).', dalil: 'Quran 2:275-279, Muslim 1598'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Riba is haram in all forms. No exception based on location. Includes credit card interest, bank interest, and late payment penalties.', dalil: 'Quran 2:275-279, Muwatta Malik'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Riba is categorically haram. Both riba al-fadl (excess in exchange) and riba al-nasi\'ah (interest on loans) are prohibited.', dalil: 'Quran 2:275-279, Muslim 1587'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Riba is haram. Extends to any guaranteed return on invested money. Islamic finance alternatives (murabaha, musharaka) should be used.', dalil: 'Quran 2:275-279, Bukhari 2145'),
        ],
        keyPoints: [
          'All four schools unanimously agree that riba (interest) is one of the gravest sins',
          'The prohibition covers both giving and receiving interest',
          'Islamic finance alternatives exist: profit-sharing (musharaka), cost-plus financing (murabaha), leasing (ijarah)',
        ],
      ),
      AhkamTopic(
        title: 'Food of the People of the Book',
        titleArabic: 'طعام أهل الكتاب',
        summary: 'The Quran permits eating the food of Jews and Christians (Ahl al-Kitab), but scholars differ on what this entails in modern times.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Meat slaughtered by Jews/Christians is halal if they mention God\'s name. Machine slaughter is debated. Supermarket meat in non-Muslim countries needs verification.', dalil: 'Quran 5:5, various fiqh opinions'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Meat of Ahl al-Kitab is halal even if we don\'t know if Bismillah was said. The default is permissibility. Most lenient on this issue.', dalil: 'Quran 5:5, Maliki principles of ease'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Halal if slaughtered by a Christian/Jew who believes in their scripture. Must meet basic slaughter requirements (cutting throat). Doubt doesn\'t make it haram.', dalil: 'Quran 5:5, general principles'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Permissible if we know or assume it was slaughtered properly. If unsure, say Bismillah and eat. Meat from known Christian/Jewish butchers is fine.', dalil: 'Quran 5:5, Bukhari 5507'),
        ],
        keyPoints: [
          'Quran 5:5 explicitly permits the food of the People of the Book',
          'This applies to meat that was slaughtered (dhabihah), not meat that died naturally',
          'Modern scholars debate whether factory-farmed meat qualifies under this ruling',
        ],
      ),
    ],
  ),

  // 8. Daily Life
  AhkamCategory(
    id: 'daily',
    title: 'Daily Life',
    titleArabic: 'أحكام يومية',
    icon: IconType.daily,
    topics: [
      AhkamTopic(
        title: 'Beard and Grooming',
        titleArabic: 'اللحية والعناية',
        summary: 'The ruling on keeping a beard and its minimum length is debated, with scholars ranging from obligatory to recommended.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Growing the beard is wajib (obligatory). Minimum one fist-length. Shaving is haram. Trimming below a fist-length is sinful.', dalil: 'Bukhari 5893, Muslim 259'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Growing the beard is wajib. Shaving is haram. Slight trimming for neatness is allowed. No specific minimum length required.', dalil: 'Bukhari 5893, Muslim 259'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Growing the beard is sunnah (strongly recommended). Shaving is makruh (disliked) but not haram. Trimming for neatness is fine.', dalil: 'Bukhari 5893, Nawawi\'s commentary'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Growing the beard is wajib. Shaving is haram. Trimming beyond a fist-length is permissible. Mustache should be trimmed short.', dalil: 'Bukhari 5893, Muslim 259'),
        ],
        keyPoints: [
          'All agree that the Prophet commanded growing the beard and trimming the mustache',
          'The hadith "Let your beards grow" is in Bukhari and Muslim',
          'The level of obligation (wajib vs sunnah) is the main difference',
        ],
      ),
      AhkamTopic(
        title: 'Music and Singing',
        titleArabic: 'الغناء والموسيقى',
        summary: 'The permissibility of music is one of the most debated topics in Islamic jurisprudence across all four schools.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Musical instruments are haram. Singing without instruments is permissible if content is halal. The duff (frame drum) is permitted for weddings.', dalil: 'Bukhari 5590, various narrations'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Imam Malik disliked music. Later Maliki scholars permitted singing with duff for celebrations. String and wind instruments are prohibited.', dalil: 'Bukhari 5590, Maliki texts'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Imam al-Ghazali (Shafi\'i) permitted music that doesn\'t lead to haram. Many Shafi\'i scholars prohibit instruments. Duff is allowed.', dalil: 'Bukhari 5590, Ihya Ulum al-Din'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Most strict: all musical instruments are haram. Even the duff is only permitted for weddings. Nasheeds without instruments are permissible.', dalil: 'Bukhari 5590, Ahmad\'s Musnad'),
        ],
        keyPoints: [
          'The duff (frame drum) for weddings and celebrations is permitted by all',
          'Nasheeds (vocal Islamic songs) without instruments are generally acceptable',
          'Contemporary scholars are divided; some permit wholesome music',
        ],
      ),
      AhkamTopic(
        title: 'Photography and Images',
        titleArabic: 'التصوير',
        summary: 'The ruling on photography and images of living beings is debated, with traditional rulings on taswir being reinterpreted for modern technology.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Traditional taswir (image-making) is haram. Many contemporary Hanafi scholars permit photography and video as they are reflections, not sculptures.', dalil: 'Bukhari 5954, Muslim 2107'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Handmade images of living beings are prohibited. Photography is permitted by most contemporary Maliki scholars as it captures light, not creating from scratch.', dalil: 'Bukhari 5954, modern Maliki fatwas'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Similar to Maliki position. Hand-drawn images of animate beings are prohibited. Photography is generally permitted by contemporary scholars.', dalil: 'Bukhari 5954, Muslim 2107'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Most strict traditionally. Hand-drawn and sculpted images haram. Photography: some permit, some prohibit. Video is more widely accepted than still photos.', dalil: 'Bukhari 5954, Ibn Uthaymeen\'s fatwas'),
        ],
        keyPoints: [
          'The original hadith prohibition applies to hand-made images (statues, paintings)',
          'Most contemporary scholars across all schools permit photography for documentation',
          'Hanging photos as decoration is more debated than taking them',
        ],
      ),
      AhkamTopic(
        title: 'Greetings to Non-Muslims',
        titleArabic: 'السلام على غير المسلمين',
        summary: 'Whether Muslims should initiate the Islamic greeting (As-salamu alaykum) with non-Muslims, and how to respond to their greetings.',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Not recommended to initiate salam to non-Muslims. If they greet you, respond with "Wa alaykum" (and upon you). Other greetings like "Good morning" are fine.', dalil: 'Muslim 2167, Bukhari 6258'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Initiating salam to non-Muslims is permissible according to some Maliki scholars, especially for neighbors, colleagues, and maintaining good relations.', dalil: 'Quran 4:86, various Maliki opinions'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Should not initiate salam. Respond with "Wa alaykum." However, general greetings and good manners are obligatory regardless of religion.', dalil: 'Muslim 2167, Nawawi\'s explanation'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Should not initiate salam. Reply with "Wa alaykum." Ibn Taymiyyah permitted initiating with "As-salamu ala man ittaba\'a al-huda" (Peace upon those who follow guidance).', dalil: 'Muslim 2167, Ibn Taymiyyah\'s fatwa'),
        ],
        keyPoints: [
          'All agree Muslims should be kind and courteous to non-Muslims regardless of the salam ruling',
          'Using other greetings (Hello, Good morning, Welcome) is fine according to all schools',
          'Many contemporary scholars permit initiating salam to non-Muslims in today\'s context',
        ],
      ),
      AhkamTopic(
        title: 'Clothing Rules',
        titleArabic: 'أحكام اللباس',
        summary: 'Islam prescribes modesty in dress for both men and women, with specific rules about what must be covered (awrah).',
        rulings: [
          MadhabRuling(madhab: Madhab.hanafi, ruling: 'Men\'s awrah: navel to knee. Women\'s awrah: entire body except face, hands, and feet. Silk is haram for men. Gold jewelry haram for men.', dalil: 'Quran 24:31, Bukhari 5826, Muslim 2069'),
          MadhabRuling(madhab: Madhab.maliki, ruling: 'Men\'s awrah: navel to knee (front and back private parts strictly). Women: all except face and hands. Feet debated. Silk haram for men.', dalil: 'Quran 24:31, Bukhari 5826'),
          MadhabRuling(madhab: Madhab.shafii, ruling: 'Men\'s awrah: navel to knee. Women: everything except face and hands. Feet are awrah. Thin/transparent clothing doesn\'t fulfill covering.', dalil: 'Quran 24:31, Muslim 2069'),
          MadhabRuling(madhab: Madhab.hanbali, ruling: 'Men\'s awrah: navel to knee. Women: everything except face (and hands in some views). Tight clothing that reveals body shape is also problematic.', dalil: 'Quran 24:31, Bukhari 5826'),
        ],
        keyPoints: [
          'Modesty in clothing applies to both men and women',
          'All agree: silk and gold are prohibited for Muslim men',
          'Whether face covering (niqab) is obligatory or recommended is debated even within schools',
        ],
      ),
    ],
  ),
];
