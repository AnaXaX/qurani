import 'models/dua.dart';

const List<DuaCategory> duaCategories = [
  // ============================================================
  // 1. Morning Du'as (أذكار الصباح)
  // ============================================================
  DuaCategory(
    id: 'morning',
    title: 'Morning',
    titleArabic: 'أذكار الصباح',
    icon: 'morning',
    duas: [
      Dua(
        arabic:
            'اللَّهُمَّ بِكَ أَصْبَحْنَا، وَبِكَ أَمْسَيْنَا، وَبِكَ نَحْيَا، وَبِكَ نَمُوتُ، وَإِلَيْكَ النُّشُورُ',
        transliteration:
            'Allahumma bika asbahna, wa bika amsayna, wa bika nahya, wa bika namootu, wa ilaykan-nushoor',
        translation:
            'O Allah, by Your leave we have reached the morning and by Your leave we have reached the evening, by Your leave we live and die and unto You is our resurrection.',
        reference: 'Sunan at-Tirmidhi 3391',
      ),
      Dua(
        arabic:
            'أَصْبَحْنَا وَأَصْبَحَ الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ. رَبِّ أَسْأَلُكَ خَيْرَ مَا فِي هَذَا الْيَوْمِ وَخَيْرَ مَا بَعْدَهُ، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِي هَذَا الْيَوْمِ وَشَرِّ مَا بَعْدَهُ، رَبِّ أَعُوذُ بِكَ مِنَ الْكَسَلِ وَسُوءِ الْكِبَرِ، رَبِّ أَعُوذُ بِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابٍ فِي الْقَبْرِ',
        transliteration:
            'Asbahna wa asbahal-mulku lillah, walhamdu lillah, la ilaha illallahu wahdahu la shareeka lah, lahul-mulku wa lahul-hamdu wa huwa \'ala kulli shay\'in qadeer. Rabbi as\'aluka khayra ma fi hadhal-yawmi wa khayra ma ba\'dahu, wa a\'oodhu bika min sharri ma fi hadhal-yawmi wa sharri ma ba\'dahu. Rabbi a\'oodhu bika minal-kasali wa soo\'il-kibar. Rabbi a\'oodhu bika min \'adhabin fin-nari wa \'adhabin fil-qabr',
        translation:
            'We have reached the morning and at this very time all sovereignty belongs to Allah. All praise is for Allah. None has the right to be worshipped except Allah, alone, without partner. To Him belongs all sovereignty and praise, and He is over all things omnipotent. My Lord, I ask You for the good of this day and the good of what follows it, and I seek refuge in You from the evil of this day and the evil of what follows it. My Lord, I seek refuge in You from laziness and the misery of old age. My Lord, I seek refuge in You from torment in the Fire and torment in the grave.',
        reference: 'Sahih Muslim 2723',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ إِنِّي أَصْبَحْتُ أُشْهِدُكَ، وَأُشْهِدُ حَمَلَةَ عَرْشِكَ، وَمَلَائِكَتَكَ، وَجَمِيعَ خَلْقِكَ، أَنَّكَ أَنْتَ اللَّهُ لَا إِلَهَ إِلَّا أَنْتَ وَحْدَكَ لَا شَرِيكَ لَكَ، وَأَنَّ مُحَمَّدًا عَبْدُكَ وَرَسُولُكَ',
        transliteration:
            'Allahumma inni asbahtu ush-hiduka, wa ush-hidu hamalata \'arshika, wa mala\'ikataka, wa jamee\'a khalqika, annaka antallahu la ilaha illa anta wahdaka la shareeka laka, wa anna Muhammadan \'abduka wa rasooluk',
        translation:
            'O Allah, verily I have reached the morning and call on You, the bearers of Your throne, Your angels, and all of Your creation to witness that You are Allah, none has the right to be worshipped except You, alone, without partner, and that Muhammad is Your servant and messenger.',
        reference: 'Sunan Abu Dawud 5069',
        repeatCount: 4,
      ),
      Dua(
        arabic:
            'اللَّهُمَّ مَا أَصْبَحَ بِي مِنْ نِعْمَةٍ أَوْ بِأَحَدٍ مِنْ خَلْقِكَ فَمِنْكَ وَحْدَكَ لَا شَرِيكَ لَكَ، فَلَكَ الْحَمْدُ وَلَكَ الشُّكْرُ',
        transliteration:
            'Allahumma ma asbaha bi min ni\'matin aw bi-ahadin min khalqika faminka wahdaka la shareeka laka, falakal-hamdu wa lakash-shukr',
        translation:
            'O Allah, what blessing I or any of Your creation have risen upon, is from You alone, without partner, so for You is all praise and unto You all thanks.',
        reference: 'Sunan Abu Dawud 5073',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ عَافِنِي فِي بَدَنِي، اللَّهُمَّ عَافِنِي فِي سَمْعِي، اللَّهُمَّ عَافِنِي فِي بَصَرِي، لَا إِلَهَ إِلَّا أَنْتَ. اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْكُفْرِ وَالْفَقْرِ، وَأَعُوذُ بِكَ مِنْ عَذَابِ الْقَبْرِ، لَا إِلَهَ إِلَّا أَنْتَ',
        transliteration:
            'Allahumma \'aafini fi badani, Allahumma \'aafini fi sam\'i, Allahumma \'aafini fi basari, la ilaha illa ant. Allahumma inni a\'oodhu bika minal-kufri wal-faqr, wa a\'oodhu bika min \'adhabil-qabr, la ilaha illa ant',
        translation:
            'O Allah, grant my body health. O Allah, grant my hearing health. O Allah, grant my sight health. None has the right to be worshipped except You. O Allah, I seek refuge in You from disbelief and poverty, and I seek refuge in You from the torment of the grave. None has the right to be worshipped except You.',
        reference: 'Sunan Abu Dawud 5090',
        repeatCount: 3,
      ),
      Dua(
        arabic:
            'حَسْبِيَ اللَّهُ لَا إِلَهَ إِلَّا هُوَ عَلَيْهِ تَوَكَّلْتُ وَهُوَ رَبُّ الْعَرْشِ الْعَظِيمِ',
        transliteration:
            'Hasbiyallahu la ilaha illa huwa \'alayhi tawakkaltu wa huwa Rabbul-\'Arshil-\'Adheem',
        translation:
            'Allah is sufficient for me. None has the right to be worshipped except Him. I put my trust in Him and He is Lord of the Exalted Throne.',
        reference: 'Sunan Abu Dawud 5081',
        repeatCount: 7,
      ),
      Dua(
        arabic:
            'اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي الدُّنْيَا وَالْآخِرَةِ، اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِينِي وَدُنْيَايَ وَأَهْلِي وَمَالِي، اللَّهُمَّ اسْتُرْ عَوْرَاتِي وَآمِنْ رَوْعَاتِي، اللَّهُمَّ احْفَظْنِي مِنْ بَيْنِ يَدَيَّ وَمِنْ خَلْفِي وَعَنْ يَمِينِي وَعَنْ شِمَالِي وَمِنْ فَوْقِي، وَأَعُوذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِي',
        transliteration:
            'Allahumma inni as\'alukal-\'afwa wal-\'aafiyata fid-dunya wal-aakhirah. Allahumma inni as\'alukal-\'afwa wal-\'aafiyata fi deeni wa dunyaya wa ahli wa maali. Allahum-mastur \'awraati, wa aamin raw\'aati. Allahum-mahfadhni min bayni yadayya wa min khalfi, wa \'an yameeni wa \'an shimaali, wa min fawqi, wa a\'oodhu bi-\'adhamatika an ughtaala min tahti',
        translation:
            'O Allah, I ask You for pardon and well-being in this life and the next. O Allah, I ask You for pardon and well-being in my religious and worldly affairs, and my family and my wealth. O Allah, veil my weaknesses and set at ease my dismay. O Allah, preserve me from the front and from behind and on my right and on my left and from above, and I seek refuge in Your greatness from being unexpectedly destroyed from beneath me.',
        reference: 'Sunan Abu Dawud 5074',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ عَالِمَ الْغَيْبِ وَالشَّهَادَةِ فَاطِرَ السَّمَاوَاتِ وَالْأَرْضِ، رَبَّ كُلِّ شَيْءٍ وَمَلِيكَهُ، أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا أَنْتَ، أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي وَمِنْ شَرِّ الشَّيْطَانِ وَشِرْكِهِ، وَأَنْ أَقْتَرِفَ عَلَى نَفْسِي سُوءًا أَوْ أَجُرَّهُ إِلَى مُسْلِمٍ',
        transliteration:
            'Allahumma \'aalimal-ghaybi wash-shahaadati faatiras-samaawaati wal-ard, rabba kulli shay\'in wa maleekahu, ash-hadu an la ilaha illa ant, a\'oodhu bika min sharri nafsi wa min sharrish-shaytaani wa shirkihi, wa an aqtarifa \'ala nafsi soo\'an aw ajurrahu ila muslim',
        translation:
            'O Allah, Knower of the unseen and the seen, Creator of the heavens and the Earth, Lord and Sovereign of all things, I bear witness that none has the right to be worshipped except You. I seek refuge in You from the evil of my soul and from the evil and traps of Satan, and from committing wrong against my soul or bringing such upon another Muslim.',
        reference: 'Sunan at-Tirmidhi 3392',
      ),
      Dua(
        arabic:
            'بِسْمِ اللَّهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ',
        transliteration:
            'Bismillahil-ladhi la yadurru ma\'asmihi shay\'un fil-ardi wa la fis-samaa\'i wa huwas-Samee\'ul-\'Aleem',
        translation:
            'In the name of Allah with whose name nothing is harmed on earth nor in the heavens and He is the All-Hearing, the All-Knowing.',
        reference: 'Sunan Abu Dawud 5088',
        repeatCount: 3,
      ),
    ],
  ),

  // ============================================================
  // 2. Evening Du'as (أذكار المساء)
  // ============================================================
  DuaCategory(
    id: 'evening',
    title: 'Evening',
    titleArabic: 'أذكار المساء',
    icon: 'evening',
    duas: [
      Dua(
        arabic:
            'اللَّهُمَّ بِكَ أَمْسَيْنَا، وَبِكَ أَصْبَحْنَا، وَبِكَ نَحْيَا، وَبِكَ نَمُوتُ، وَإِلَيْكَ الْمَصِيرُ',
        transliteration:
            'Allahumma bika amsayna, wa bika asbahna, wa bika nahya, wa bika namootu, wa ilaykal-maseer',
        translation:
            'O Allah, by Your leave we have reached the evening and by Your leave we have reached the morning, by Your leave we live and die and unto You is our return.',
        reference: 'Sunan at-Tirmidhi 3391',
      ),
      Dua(
        arabic:
            'أَمْسَيْنَا وَأَمْسَى الْمُلْكُ لِلَّهِ، وَالْحَمْدُ لِلَّهِ، لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ. رَبِّ أَسْأَلُكَ خَيْرَ مَا فِي هَذِهِ اللَّيْلَةِ وَخَيْرَ مَا بَعْدَهَا، وَأَعُوذُ بِكَ مِنْ شَرِّ مَا فِي هَذِهِ اللَّيْلَةِ وَشَرِّ مَا بَعْدَهَا، رَبِّ أَعُوذُ بِكَ مِنَ الْكَسَلِ وَسُوءِ الْكِبَرِ، رَبِّ أَعُوذُ بِكَ مِنْ عَذَابٍ فِي النَّارِ وَعَذَابٍ فِي الْقَبْرِ',
        transliteration:
            'Amsayna wa amsal-mulku lillah, walhamdu lillah, la ilaha illallahu wahdahu la shareeka lah, lahul-mulku wa lahul-hamdu wa huwa \'ala kulli shay\'in qadeer. Rabbi as\'aluka khayra ma fi hadhihil-laylati wa khayra ma ba\'daha, wa a\'oodhu bika min sharri ma fi hadhihil-laylati wa sharri ma ba\'daha. Rabbi a\'oodhu bika minal-kasali wa soo\'il-kibar. Rabbi a\'oodhu bika min \'adhabin fin-nari wa \'adhabin fil-qabr',
        translation:
            'We have reached the evening and at this very time all sovereignty belongs to Allah. All praise is for Allah. None has the right to be worshipped except Allah, alone, without partner. To Him belongs all sovereignty and praise, and He is over all things omnipotent. My Lord, I ask You for the good of this night and the good of what follows it, and I seek refuge in You from the evil of this night and the evil of what follows it. My Lord, I seek refuge in You from laziness and the misery of old age. My Lord, I seek refuge in You from torment in the Fire and torment in the grave.',
        reference: 'Sahih Muslim 2723',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ إِنِّي أَمْسَيْتُ أُشْهِدُكَ، وَأُشْهِدُ حَمَلَةَ عَرْشِكَ، وَمَلَائِكَتَكَ، وَجَمِيعَ خَلْقِكَ، أَنَّكَ أَنْتَ اللَّهُ لَا إِلَهَ إِلَّا أَنْتَ وَحْدَكَ لَا شَرِيكَ لَكَ، وَأَنَّ مُحَمَّدًا عَبْدُكَ وَرَسُولُكَ',
        transliteration:
            'Allahumma inni amsaytu ush-hiduka, wa ush-hidu hamalata \'arshika, wa mala\'ikataka, wa jamee\'a khalqika, annaka antallahu la ilaha illa anta wahdaka la shareeka laka, wa anna Muhammadan \'abduka wa rasooluk',
        translation:
            'O Allah, verily I have reached the evening and call on You, the bearers of Your throne, Your angels, and all of Your creation to witness that You are Allah, none has the right to be worshipped except You, alone, without partner, and that Muhammad is Your servant and messenger.',
        reference: 'Sunan Abu Dawud 5069',
        repeatCount: 4,
      ),
      Dua(
        arabic:
            'اللَّهُمَّ مَا أَمْسَى بِي مِنْ نِعْمَةٍ أَوْ بِأَحَدٍ مِنْ خَلْقِكَ فَمِنْكَ وَحْدَكَ لَا شَرِيكَ لَكَ، فَلَكَ الْحَمْدُ وَلَكَ الشُّكْرُ',
        transliteration:
            'Allahumma ma amsa bi min ni\'matin aw bi-ahadin min khalqika faminka wahdaka la shareeka laka, falakal-hamdu wa lakash-shukr',
        translation:
            'O Allah, what blessing I or any of Your creation have come upon in this evening, is from You alone, without partner, so for You is all praise and unto You all thanks.',
        reference: 'Sunan Abu Dawud 5073',
      ),
      Dua(
        arabic:
            'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ',
        transliteration:
            'A\'oodhu bikalimaatil-laahit-taammaati min sharri ma khalaq',
        translation:
            'I seek refuge in the perfect words of Allah from the evil of what He has created.',
        reference: 'Sahih Muslim 2708',
        repeatCount: 3,
      ),
      Dua(
        arabic:
            'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنَ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنَ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ وَقَهْرِ الرِّجَالِ',
        transliteration:
            'Allahumma inni a\'oodhu bika minal-hammi wal-hazan, wa a\'oodhu bika minal-\'ajzi wal-kasal, wa a\'oodhu bika minal-jubni wal-bukhl, wa a\'oodhu bika min ghalabatid-dayni wa qahrir-rijaal',
        translation:
            'O Allah, I seek refuge in You from anxiety and sorrow, weakness and laziness, miserliness and cowardice, the burden of debts and from being overpowered by men.',
        reference: 'Sahih al-Bukhari 6369',
      ),
      Dua(
        arabic:
            'يَا حَيُّ يَا قَيُّومُ بِرَحْمَتِكَ أَسْتَغِيثُ، أَصْلِحْ لِي شَأْنِي كُلَّهُ وَلَا تَكِلْنِي إِلَى نَفْسِي طَرْفَةَ عَيْنٍ',
        transliteration:
            'Ya Hayyu Ya Qayyoomu birahmatika astagheethu, aslih li sha\'ni kullahu wa la takilni ila nafsi tarfata \'ayn',
        translation:
            'O Ever-Living, O Self-Sustaining and Protector of all that exists, by Your mercy I seek assistance, rectify for me all of my affairs and do not leave me to myself even for the blink of an eye.',
        reference: 'Mustadrak al-Hakim 1/545',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي الدُّنْيَا وَالْآخِرَةِ، اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي دِينِي وَدُنْيَايَ وَأَهْلِي وَمَالِي، اللَّهُمَّ اسْتُرْ عَوْرَاتِي وَآمِنْ رَوْعَاتِي، اللَّهُمَّ احْفَظْنِي مِنْ بَيْنِ يَدَيَّ وَمِنْ خَلْفِي وَعَنْ يَمِينِي وَعَنْ شِمَالِي وَمِنْ فَوْقِي، وَأَعُوذُ بِعَظَمَتِكَ أَنْ أُغْتَالَ مِنْ تَحْتِي',
        transliteration:
            'Allahumma inni as\'alukal-\'afwa wal-\'aafiyata fid-dunya wal-aakhirah. Allahumma inni as\'alukal-\'afwa wal-\'aafiyata fi deeni wa dunyaya wa ahli wa maali. Allahum-mastur \'awraati, wa aamin raw\'aati. Allahum-mahfadhni min bayni yadayya wa min khalfi, wa \'an yameeni wa \'an shimaali, wa min fawqi, wa a\'oodhu bi-\'adhamatika an ughtaala min tahti',
        translation:
            'O Allah, I ask You for pardon and well-being in this life and the next. O Allah, I ask You for pardon and well-being in my religious and worldly affairs, and my family and my wealth. O Allah, veil my weaknesses and set at ease my dismay. O Allah, preserve me from the front and from behind and on my right and on my left and from above, and I seek refuge in Your greatness from being unexpectedly destroyed from beneath me.',
        reference: 'Sunan Abu Dawud 5074',
      ),
    ],
  ),

  // ============================================================
  // 3. Sleep Du'as (أدعية النوم)
  // ============================================================
  DuaCategory(
    id: 'sleep',
    title: 'Sleep',
    titleArabic: 'أدعية النوم',
    icon: 'sleep',
    duas: [
      Dua(
        arabic:
            'بِاسْمِكَ اللَّهُمَّ أَمُوتُ وَأَحْيَا',
        transliteration: 'Bismika Allahumma amootu wa ahya',
        translation:
            'In Your name O Allah, I die and I live.',
        reference: 'Sahih al-Bukhari 6324',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ إِنَّكَ خَلَقْتَ نَفْسِي وَأَنْتَ تَوَفَّاهَا، لَكَ مَمَاتُهَا وَمَحْيَاهَا، إِنْ أَحْيَيْتَهَا فَاحْفَظْهَا، وَإِنْ أَمَتَّهَا فَاغْفِرْ لَهَا، اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَافِيَةَ',
        transliteration:
            'Allahumma innaka khalaqta nafsi wa anta tawaffaha, laka mamatuha wa mahyaha, in ahyaytaha fahfadhha, wa in amattaha faghfir laha. Allahumma inni as\'alukal-\'aafiyah',
        translation:
            'O Allah, verily You have created my soul and You shall take its life, to You belongs its life and death. If You should keep my soul alive then protect it, and if You should take its life then forgive it. O Allah, I ask You to grant me well-being.',
        reference: 'Sahih Muslim 2712',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ قِنِي عَذَابَكَ يَوْمَ تَبْعَثُ عِبَادَكَ',
        transliteration:
            'Allahumma qini \'adhabaka yawma tab\'athu \'ibadak',
        translation:
            'O Allah, protect me from Your punishment on the day You resurrect Your servants.',
        reference: 'Sunan Abu Dawud 5045',
        repeatCount: 3,
      ),
      Dua(
        arabic:
            'اللَّهُمَّ رَبَّ السَّمَاوَاتِ السَّبْعِ وَرَبَّ الْعَرْشِ الْعَظِيمِ، رَبَّنَا وَرَبَّ كُلِّ شَيْءٍ، فَالِقَ الْحَبِّ وَالنَّوَى، وَمُنْزِلَ التَّوْرَاةِ وَالْإِنْجِيلِ وَالْفُرْقَانِ، أَعُوذُ بِكَ مِنْ شَرِّ كُلِّ شَيْءٍ أَنْتَ آخِذٌ بِنَاصِيَتِهِ. اللَّهُمَّ أَنْتَ الْأَوَّلُ فَلَيْسَ قَبْلَكَ شَيْءٌ، وَأَنْتَ الْآخِرُ فَلَيْسَ بَعْدَكَ شَيْءٌ، وَأَنْتَ الظَّاهِرُ فَلَيْسَ فَوْقَكَ شَيْءٌ، وَأَنْتَ الْبَاطِنُ فَلَيْسَ دُونَكَ شَيْءٌ، اقْضِ عَنَّا الدَّيْنَ وَأَغْنِنَا مِنَ الْفَقْرِ',
        transliteration:
            'Allahumma Rabbas-samaawaatis-sab\'i wa Rabbal-\'Arshil-\'Adheem, Rabbana wa Rabba kulli shay\'in, faaliqal-habbi wan-nawa, wa munzilat-Tawraati wal-Injeeli wal-Furqaan, a\'oodhu bika min sharri kulli shay\'in anta aakhidhun binaasiyatih. Allahumma antal-Awwalu falaysa qablaka shay\'un, wa antal-Aakhiru falaysa ba\'daka shay\'un, wa antadh-Dhaahiru falaysa fawqaka shay\'un, wa antal-Baatinu falaysa doonaka shay\'un, iqdi \'annad-dayna wa aghnina minal-faqr',
        translation:
            'O Allah, Lord of the seven heavens and Lord of the Exalted Throne, our Lord and Lord of all things, Splitter of the seed and the date stone, Revealer of the Torah, the Gospel and the Criterion (Quran), I seek refuge in You from the evil of all things You shall seize by the forelock. O Allah, You are the First so there is nothing before You, and You are the Last so there is nothing after You, and You are the Manifest so there is nothing above You, and You are the Hidden so there is nothing beyond You. Settle our debts and spare us from poverty.',
        reference: 'Sahih Muslim 2713',
      ),
      Dua(
        arabic:
            'الْحَمْدُ لِلَّهِ الَّذِي أَطْعَمَنَا وَسَقَانَا، وَكَفَانَا وَآوَانَا، فَكَمْ مِمَّنْ لَا كَافِيَ لَهُ وَلَا مُؤْوِيَ',
        transliteration:
            'Alhamdu lillahil-ladhi at\'amana wa saqaana, wa kafaana wa aawaana, fakam mimman la kaafiya lahu wa la mu\'wiy',
        translation:
            'All praise is for Allah, Who fed us and gave us drink, and Who is sufficient for us and has sheltered us, for how many have none to suffice them or shelter them.',
        reference: 'Sahih Muslim 2715',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ أَسْلَمْتُ نَفْسِي إِلَيْكَ، وَفَوَّضْتُ أَمْرِي إِلَيْكَ، وَوَجَّهْتُ وَجْهِي إِلَيْكَ، وَأَلْجَأْتُ ظَهْرِي إِلَيْكَ، رَغْبَةً وَرَهْبَةً إِلَيْكَ، لَا مَلْجَأَ وَلَا مَنْجَا مِنْكَ إِلَّا إِلَيْكَ، آمَنْتُ بِكِتَابِكَ الَّذِي أَنْزَلْتَ، وَبِنَبِيِّكَ الَّذِي أَرْسَلْتَ',
        transliteration:
            'Allahumma aslamtu nafsi ilayk, wa fawwadtu amri ilayk, wa wajjahtu wajhi ilayk, wa alja\'tu dhahri ilayk, raghbatan wa rahbatan ilayk, la malja\'a wa la manja minka illa ilayk, aamantu bikitabikal-ladhi anzalt, wa binabiyyikal-ladhi arsalt',
        translation:
            'O Allah, I submit my soul unto You, and I entrust my affair unto You, and I turn my face towards You, and I lean my back upon You, hoping in You and fearing You. There is no fleeing from You, and there is no place of protection and safety except with You. I believe in Your Book which You have revealed and in Your Prophet whom You have sent.',
        reference: 'Sahih al-Bukhari 6313',
      ),
      Dua(
        arabic: 'سُبْحَانَ اللَّهِ',
        transliteration: 'SubhanAllah',
        translation: 'How perfect Allah is.',
        reference: 'Sahih al-Bukhari 5362',
        repeatCount: 33,
      ),
      Dua(
        arabic: 'الْحَمْدُ لِلَّهِ',
        transliteration: 'Alhamdulillah',
        translation: 'All praise is for Allah.',
        reference: 'Sahih al-Bukhari 5362',
        repeatCount: 33,
      ),
      Dua(
        arabic: 'اللَّهُ أَكْبَرُ',
        transliteration: 'Allahu Akbar',
        translation: 'Allah is the Greatest.',
        reference: 'Sahih al-Bukhari 5362',
        repeatCount: 34,
      ),
    ],
  ),

  // ============================================================
  // 4. Waking Up (أدعية الاستيقاظ)
  // ============================================================
  DuaCategory(
    id: 'waking_up',
    title: 'Waking Up',
    titleArabic: 'أدعية الاستيقاظ',
    icon: 'waking_up',
    duas: [
      Dua(
        arabic:
            'الْحَمْدُ لِلَّهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُورُ',
        transliteration:
            'Alhamdu lillahil-ladhi ahyana ba\'da ma amaatana wa ilayhin-nushoor',
        translation:
            'All praise is for Allah who gave us life after having taken it from us and unto Him is the resurrection.',
        reference: 'Sahih al-Bukhari 6324',
      ),
      Dua(
        arabic:
            'لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، سُبْحَانَ اللَّهِ، وَالْحَمْدُ لِلَّهِ، وَلَا إِلَهَ إِلَّا اللَّهُ، وَاللَّهُ أَكْبَرُ، وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ الْعَلِيِّ الْعَظِيمِ',
        transliteration:
            'La ilaha illallahu wahdahu la shareeka lah, lahul-mulku wa lahul-hamdu, wa huwa \'ala kulli shay\'in qadeer. SubhanAllah, walhamdu lillah, wa la ilaha illallah, wallahu akbar, wa la hawla wa la quwwata illa billahil-\'Aliyyil-\'Adheem',
        translation:
            'None has the right to be worshipped except Allah, alone, without partner, to Him belongs all sovereignty and praise, and He is over all things omnipotent. How perfect Allah is, and all praise is for Allah, and none has the right to be worshipped except Allah, Allah is the Greatest and there is no might nor power except with Allah, the Most High, the Most Magnificent.',
        reference: 'Sahih al-Bukhari 1154',
      ),
      Dua(
        arabic:
            'الْحَمْدُ لِلَّهِ الَّذِي عَافَانِي فِي جَسَدِي، وَرَدَّ عَلَيَّ رُوحِي، وَأَذِنَ لِي بِذِكْرِهِ',
        transliteration:
            'Alhamdu lillahil-ladhi \'aafaani fi jasadi, wa radda \'alayya roohi, wa adhina li bidhikrih',
        translation:
            'All praise is for Allah who restored to me my health and returned my soul and has allowed me to remember Him.',
        reference: 'Sunan at-Tirmidhi 3401',
      ),
      Dua(
        arabic:
            'إِنَّ فِي خَلْقِ السَّمَاوَاتِ وَالْأَرْضِ وَاخْتِلَافِ اللَّيْلِ وَالنَّهَارِ لَآيَاتٍ لِأُولِي الْأَلْبَابِ',
        transliteration:
            'Inna fi khalqis-samaawaati wal-ardi wakhtilaafil-layli wan-nahaari la-aayaatin li-ulil-albaab',
        translation:
            'Indeed, in the creation of the heavens and the earth and the alternation of the night and the day are signs for those of understanding.',
        reference: 'Quran 3:190',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ إِنِّي أَصْبَحْتُ مِنْكَ فِي نِعْمَةٍ وَعَافِيَةٍ وَسِتْرٍ، فَأَتِمَّ نِعْمَتَكَ عَلَيَّ وَعَافِيَتَكَ وَسِتْرَكَ فِي الدُّنْيَا وَالْآخِرَةِ',
        transliteration:
            'Allahumma inni asbahtu minka fi ni\'matin wa \'aafiyatin wa sitr, fa-atimma ni\'mataka \'alayya wa \'aafiyataka wa sitraka fid-dunya wal-aakhirah',
        translation:
            'O Allah, I have risen to find myself enjoying Your blessing, well-being, and protection. So complete Your blessings upon me and Your well-being and Your protection in this life and the next.',
        reference: 'Sunan Ibn Majah 3871',
      ),
      Dua(
        arabic:
            'رَبِّ اغْفِرْ لِي وَتُبْ عَلَيَّ إِنَّكَ أَنْتَ التَّوَّابُ الْغَفُورُ',
        transliteration:
            'Rabbighfir li wa tub \'alayya innaka antat-Tawwaabul-Ghafoor',
        translation:
            'My Lord, forgive me and accept my repentance. You are the Ever-Accepting of repentance, the All-Forgiving.',
        reference: 'Sunan Abu Dawud 1516',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلًا مُتَقَبَّلًا',
        transliteration:
            'Allahumma inni as\'aluka \'ilman naafi\'an, wa rizqan tayyiban, wa \'amalan mutaqabbalan',
        translation:
            'O Allah, I ask You for knowledge that is of benefit, a good provision, and deeds that will be accepted.',
        reference: 'Sunan Ibn Majah 925',
      ),
      Dua(
        arabic:
            'سُبْحَانَ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُورُ، لَا إِلَهَ إِلَّا اللَّهُ يُحْيِي الْمَوْتَى وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ',
        transliteration:
            'Subhaanal-ladhi ahyana ba\'da ma amaatana wa ilayhin-nushoor, la ilaha illallahu yuhyil-mawta wa huwa \'ala kulli shay\'in qadeer',
        translation:
            'How perfect is He who gave us life after death and unto Him is the resurrection. None has the right to be worshipped except Allah, He gives life to the dead and He is over all things omnipotent.',
        reference: 'Musnad Ahmad 4/294',
      ),
    ],
  ),

  // ============================================================
  // 5. Entering Mosque (أدعية دخول المسجد)
  // ============================================================
  DuaCategory(
    id: 'mosque',
    title: 'Entering Mosque',
    titleArabic: 'أدعية دخول المسجد',
    icon: 'mosque',
    duas: [
      Dua(
        arabic:
            'اللَّهُمَّ افْتَحْ لِي أَبْوَابَ رَحْمَتِكَ',
        transliteration: 'Allahummaf-tah li abwaaba rahmatik',
        translation: 'O Allah, open the gates of Your mercy for me.',
        reference: 'Sahih Muslim 713',
      ),
      Dua(
        arabic:
            'أَعُوذُ بِاللَّهِ الْعَظِيمِ، وَبِوَجْهِهِ الْكَرِيمِ، وَسُلْطَانِهِ الْقَدِيمِ، مِنَ الشَّيْطَانِ الرَّجِيمِ',
        transliteration:
            'A\'oodhu billahil-\'Adheem, wa biwajhihil-Kareem, wa sultaanihil-qadeem, minash-Shaytaanir-rajeem',
        translation:
            'I seek refuge in Allah the Most Great, by His noble face, and by His ancient authority, from the accursed devil.',
        reference: 'Sunan Abu Dawud 466',
      ),
      Dua(
        arabic:
            'بِسْمِ اللَّهِ، وَالصَّلَاةُ وَالسَّلَامُ عَلَى رَسُولِ اللَّهِ، اللَّهُمَّ افْتَحْ لِي أَبْوَابَ رَحْمَتِكَ',
        transliteration:
            'Bismillah, was-salaatu was-salaamu \'ala Rasoolillah, Allahummaf-tah li abwaaba rahmatik',
        translation:
            'In the name of Allah, and prayers and peace be upon the Messenger of Allah. O Allah, open the gates of Your mercy for me.',
        reference: 'Sunan Ibn Majah 771',
      ),
      Dua(
        arabic:
            'بِسْمِ اللَّهِ، وَالصَّلَاةُ وَالسَّلَامُ عَلَى رَسُولِ اللَّهِ، اللَّهُمَّ إِنِّي أَسْأَلُكَ مِنْ فَضْلِكَ',
        transliteration:
            'Bismillah, was-salaatu was-salaamu \'ala Rasoolillah, Allahumma inni as\'aluka min fadlik',
        translation:
            'In the name of Allah, and prayers and peace be upon the Messenger of Allah. O Allah, I ask You from Your bounty. (When leaving the mosque)',
        reference: 'Sahih Muslim 713',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ اجْعَلْنِي مِنَ التَّوَّابِينَ وَاجْعَلْنِي مِنَ الْمُتَطَهِّرِينَ',
        transliteration:
            'Allahummaj\'alni minat-tawwaabeena waj\'alni minal-mutatahhireen',
        translation:
            'O Allah, make me among those who turn to You in repentance and make me among those who are purified.',
        reference: 'Sunan at-Tirmidhi 55',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ اجْعَلْ فِي قَلْبِي نُورًا، وَفِي لِسَانِي نُورًا، وَاجْعَلْ فِي سَمْعِي نُورًا، وَاجْعَلْ فِي بَصَرِي نُورًا، وَاجْعَلْ مِنْ خَلْفِي نُورًا، وَمِنْ أَمَامِي نُورًا، وَاجْعَلْ مِنْ فَوْقِي نُورًا، وَمِنْ تَحْتِي نُورًا، اللَّهُمَّ أَعْطِنِي نُورًا',
        transliteration:
            'Allahummaj\'al fi qalbi noora, wa fi lisaani noora, waj\'al fi sam\'i noora, waj\'al fi basari noora, waj\'al min khalfi noora, wa min amaami noora, waj\'al min fawqi noora, wa min tahti noora. Allahumma a\'tini noora',
        translation:
            'O Allah, place within my heart light, and upon my tongue light, and within my ears light, and within my eyes light, and place behind me light, and in front of me light, and above me light, and beneath me light. O Allah, bestow upon me light.',
        reference: 'Sahih Muslim 763',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ، كَمَا صَلَّيْتَ عَلَى إِبْرَاهِيمَ وَعَلَى آلِ إِبْرَاهِيمَ، إِنَّكَ حَمِيدٌ مَجِيدٌ',
        transliteration:
            'Allahumma salli \'ala Muhammadin wa \'ala aali Muhammad, kama sallayta \'ala Ibraaheema wa \'ala aali Ibraaheem, innaka Hameedun Majeed',
        translation:
            'O Allah, send prayers upon Muhammad and the family of Muhammad, just as You sent prayers upon Ibrahim and the family of Ibrahim. Verily, You are full of praise and majesty.',
        reference: 'Sahih al-Bukhari 3370',
      ),
      Dua(
        arabic:
            'رَبِّ اغْفِرْ لِي ذُنُوبِي، وَافْتَحْ لِي أَبْوَابَ رَحْمَتِكَ',
        transliteration:
            'Rabbighfir li dhunoobi, waftah li abwaaba rahmatik',
        translation:
            'My Lord, forgive my sins and open the gates of Your mercy for me.',
        reference: 'Sunan at-Tirmidhi 314',
      ),
    ],
  ),

  // ============================================================
  // 6. Eating & Drinking (أدعية الطعام والشراب)
  // ============================================================
  DuaCategory(
    id: 'eating',
    title: 'Eating & Drinking',
    titleArabic: 'أدعية الطعام والشراب',
    icon: 'eating',
    duas: [
      Dua(
        arabic: 'بِسْمِ اللَّهِ',
        transliteration: 'Bismillah',
        translation: 'In the name of Allah. (Said before eating)',
        reference: 'Sahih al-Bukhari 5376',
      ),
      Dua(
        arabic: 'بِسْمِ اللَّهِ فِي أَوَّلِهِ وَآخِرِهِ',
        transliteration: 'Bismillahi fi awwalihi wa aakhirih',
        translation:
            'In the name of Allah at its beginning and at its end. (If you forgot to say Bismillah before eating)',
        reference: 'Sunan Abu Dawud 3767',
      ),
      Dua(
        arabic:
            'الْحَمْدُ لِلَّهِ الَّذِي أَطْعَمَنِي هَذَا وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِنِّي وَلَا قُوَّةٍ',
        transliteration:
            'Alhamdu lillahil-ladhi at\'amani hadha wa razaqaneehi min ghayri hawlin minni wa la quwwah',
        translation:
            'All praise is for Allah who fed me this and provided it for me without any might nor power from myself.',
        reference: 'Sunan Abu Dawud 4023',
      ),
      Dua(
        arabic:
            'الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ، غَيْرَ مَكْفِيٍّ وَلَا مُوَدَّعٍ وَلَا مُسْتَغْنًى عَنْهُ رَبَّنَا',
        transliteration:
            'Alhamdu lillahi hamdan katheeran tayyiban mubaarakan feeh, ghayra makfiyyin wa la muwadda\'in wa la mustaghnan \'anhu Rabbana',
        translation:
            'All praise is for Allah, an abundant beautiful blessed praise. He is the One Who is sufficient, Who feeds and is never fed. The One Who is longed for along with that which is with Him, and the One Who is needed. He is our Lord.',
        reference: 'Sahih al-Bukhari 5458',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ بَارِكْ لَنَا فِيهِ وَأَطْعِمْنَا خَيْرًا مِنْهُ',
        transliteration:
            'Allahumma baarik lana feehi wa at\'imna khayran minh',
        translation:
            'O Allah, bless it for us and feed us better than it. (Said after drinking milk)',
        reference: 'Sunan at-Tirmidhi 3455',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ بَارِكْ لَنَا فِيهِ وَزِدْنَا مِنْهُ',
        transliteration: 'Allahumma baarik lana feehi wa zidna minh',
        translation:
            'O Allah, bless it for us and give us more of it. (Said after drinking milk)',
        reference: 'Sunan at-Tirmidhi 3455',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ أَطْعِمْ مَنْ أَطْعَمَنِي، وَاسْقِ مَنْ سَقَانِي',
        transliteration:
            'Allahumma at\'im man at\'amani, wasqi man saqaani',
        translation:
            'O Allah, feed the one who fed me and give drink to the one who gave me drink.',
        reference: 'Sahih Muslim 2055',
      ),
      Dua(
        arabic:
            'الْحَمْدُ لِلَّهِ الَّذِي أَطْعَمَنَا وَسَقَانَا وَجَعَلَنَا مُسْلِمِينَ',
        transliteration:
            'Alhamdu lillahil-ladhi at\'amana wa saqaana wa ja\'alana muslimeen',
        translation:
            'All praise is for Allah who has fed us, given us drink, and made us Muslims.',
        reference: 'Sunan Abu Dawud 3850',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ بَارِكْ لَنَا فِي ثَمَرِنَا، وَبَارِكْ لَنَا فِي مَدِينَتِنَا، وَبَارِكْ لَنَا فِي صَاعِنَا، وَبَارِكْ لَنَا فِي مُدِّنَا',
        transliteration:
            'Allahumma baarik lana fi thamarinaa, wa baarik lana fi madeenatinaa, wa baarik lana fi saa\'inaa, wa baarik lana fi muddinaa',
        translation:
            'O Allah, bless us in our fruit, bless us in our city, bless us in our saa\' (measure) and bless us in our mudd (measure).',
        reference: 'Sahih Muslim 1373',
      ),
    ],
  ),

  // ============================================================
  // 7. Travel (أدعية السفر)
  // ============================================================
  DuaCategory(
    id: 'travel',
    title: 'Travel',
    titleArabic: 'أدعية السفر',
    icon: 'travel',
    duas: [
      Dua(
        arabic:
            'سُبْحَانَ الَّذِي سَخَّرَ لَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِينَ، وَإِنَّا إِلَى رَبِّنَا لَمُنْقَلِبُونَ',
        transliteration:
            'Subhaanal-ladhi sakhkhara lana hadha wa ma kunna lahu muqrineen, wa inna ila Rabbina lamunqaliboon',
        translation:
            'How perfect He is, the One Who has placed this (transport) at our service, and we ourselves would not have been capable of that, and to our Lord is our final destiny.',
        reference: 'Quran 43:13-14',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ إِنَّا نَسْأَلُكَ فِي سَفَرِنَا هَذَا الْبِرَّ وَالتَّقْوَى، وَمِنَ الْعَمَلِ مَا تَرْضَى، اللَّهُمَّ هَوِّنْ عَلَيْنَا سَفَرَنَا هَذَا وَاطْوِ عَنَّا بُعْدَهُ، اللَّهُمَّ أَنْتَ الصَّاحِبُ فِي السَّفَرِ وَالْخَلِيفَةُ فِي الْأَهْلِ، اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ وَعْثَاءِ السَّفَرِ، وَكَآبَةِ الْمَنْظَرِ، وَسُوءِ الْمُنْقَلَبِ فِي الْمَالِ وَالْأَهْلِ',
        transliteration:
            'Allahumma inna nas\'aluka fi safarinaa hadhal-birra wat-taqwa, wa minal-\'amali ma tarda. Allahumma hawwin \'alayna safaranaa hadha watwi \'annaa bu\'dah. Allahumma antas-saahibu fis-safari wal-khaleefatu fil-ahl. Allahumma inni a\'oodhu bika min wa\'thaa\'is-safari, wa ka\'aabatil-mandhari, wa soo\'il-munqalabi fil-maali wal-ahl',
        translation:
            'O Allah, we ask You on this our journey for goodness and piety, and for works that are pleasing to You. O Allah, lighten this journey for us and make its distance easy for us. O Allah, You are our Companion on the road and the One in Whose care we leave our family. O Allah, I seek refuge in You from this journey\'s hardships, and from the wicked sights in store and from finding harm when we return to our property and family.',
        reference: 'Sahih Muslim 1342',
      ),
      Dua(
        arabic:
            'آيِبُونَ تَائِبُونَ عَابِدُونَ لِرَبِّنَا حَامِدُونَ',
        transliteration:
            'Aayiboona, taa\'iboona, \'aabidoona, lirabbinaa haamidoon',
        translation:
            'We return, repentant, worshipping, praising our Lord. (Said upon returning from travel)',
        reference: 'Sahih Muslim 1342',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ وَعْثَاءِ السَّفَرِ، وَكَآبَةِ الْمُنْقَلَبِ، وَالْحَوْرِ بَعْدَ الْكَوْرِ، وَدَعْوَةِ الْمَظْلُومِ، وَسُوءِ الْمَنْظَرِ فِي الْأَهْلِ وَالْمَالِ',
        transliteration:
            'Allahumma inni a\'oodhu bika min wa\'thaa\'is-safar, wa ka\'aabatil-munqalab, wal-hawri ba\'dal-kawr, wa da\'watil-madhloom, wa soo\'il-mandhari fil-ahli wal-maal',
        translation:
            'O Allah, I seek refuge in You from the hardships of travel, from the wretchedness of return, from decrease after increase, from the supplication of the oppressed, and from seeing evil befall our family and property.',
        reference: 'Sahih al-Bukhari 1344',
      ),
      Dua(
        arabic: 'اللَّهُ أَكْبَرُ، اللَّهُ أَكْبَرُ، اللَّهُ أَكْبَرُ، سُبْحَانَ الَّذِي سَخَّرَ لَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِينَ، وَإِنَّا إِلَى رَبِّنَا لَمُنْقَلِبُونَ',
        transliteration:
            'Allahu Akbar, Allahu Akbar, Allahu Akbar, Subhaanal-ladhi sakhkhara lana hadha wa ma kunna lahu muqrineen, wa inna ila Rabbina lamunqaliboon',
        translation:
            'Allah is the Greatest, Allah is the Greatest, Allah is the Greatest. How perfect He is, the One Who has placed this at our service, and we ourselves would not have been capable of that, and to our Lord is our final destiny.',
        reference: 'Sahih Muslim 1342',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ اكْتُبْ لَنَا أَجْرَ سَفَرِنَا هَذَا، وَاجْعَلْ لَنَا فِيهِ بَرَكَةً',
        transliteration:
            'Allahummak-tub lanaa ajra safarinaa hadha, waj\'al lanaa feehi barakah',
        translation:
            'O Allah, record for us the reward of this journey and grant us blessing in it.',
        reference: 'Musnad Ahmad 2/144',
      ),
      Dua(
        arabic:
            'أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ',
        transliteration:
            'A\'oodhu bikalimaatil-laahit-taammaati min sharri ma khalaq',
        translation:
            'I seek refuge in the perfect words of Allah from the evil of what He has created. (Said when stopping at a place during travel)',
        reference: 'Sahih Muslim 2708',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ رَبَّ السَّمَاوَاتِ السَّبْعِ وَمَا أَظْلَلْنَ، وَرَبَّ الْأَرَضِينَ السَّبْعِ وَمَا أَقْلَلْنَ، وَرَبَّ الشَّيَاطِينِ وَمَا أَضْلَلْنَ، وَرَبَّ الرِّيَاحِ وَمَا ذَرَيْنَ، أَسْأَلُكَ خَيْرَ هَذِهِ الْقَرْيَةِ وَخَيْرَ أَهْلِهَا وَخَيْرَ مَا فِيهَا، وَأَعُوذُ بِكَ مِنْ شَرِّهَا وَشَرِّ أَهْلِهَا وَشَرِّ مَا فِيهَا',
        transliteration:
            'Allahumma Rabbas-samaawaatis-sab\'i wa ma adhlalna, wa Rabbal-aradeenas-sab\'i wa ma aqlalna, wa Rabbash-shayaateeni wa ma adlalna, wa Rabbar-riyaahi wa ma dharayna, as\'aluka khayra hadhihil-qaryati wa khayra ahlihaa wa khayra ma feeha, wa a\'oodhu bika min sharrihaa wa sharri ahlihaa wa sharri ma feeha',
        translation:
            'O Allah, Lord of the seven heavens and all that they envelop, Lord of the seven earths and all that they carry, Lord of the devils and all whom they misguide, Lord of the winds and all whom they sweep away. I ask You for the goodness of this town, the goodness of its people, and the goodness of what is in it. I seek refuge in You from its evil, the evil of its people, and the evil of what is in it.',
        reference: 'Mustadrak al-Hakim 2/100',
      ),
    ],
  ),

  // ============================================================
  // 8. Rain (أدعية المطر)
  // ============================================================
  DuaCategory(
    id: 'rain',
    title: 'Rain',
    titleArabic: 'أدعية المطر',
    icon: 'rain',
    duas: [
      Dua(
        arabic: 'اللَّهُمَّ صَيِّبًا نَافِعًا',
        transliteration: 'Allahumma sayyiban naafi\'an',
        translation: 'O Allah, may it be a beneficial rain.',
        reference: 'Sahih al-Bukhari 1032',
      ),
      Dua(
        arabic: 'مُطِرْنَا بِفَضْلِ اللَّهِ وَرَحْمَتِهِ',
        transliteration: 'Mutirnaa bifadlillahi wa rahmatih',
        translation:
            'We have been given rain by the grace and mercy of Allah.',
        reference: 'Sahih al-Bukhari 846',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ حَوَالَيْنَا وَلَا عَلَيْنَا، اللَّهُمَّ عَلَى الْآكَامِ وَالظِّرَابِ وَبُطُونِ الْأَوْدِيَةِ وَمَنَابِتِ الشَّجَرِ',
        transliteration:
            'Allahumma hawalayna wa la \'alayna, Allahumma \'alal-aakaami wadh-dhiraabi wa butoonil-awdiyati wa manaabitish-shajar',
        translation:
            'O Allah, let the rain fall around us and not upon us. O Allah, on the peaks and hills, in the valleys, and at the places where trees grow. (Said when rain becomes excessive)',
        reference: 'Sahih al-Bukhari 1014',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ اسْقِنَا غَيْثًا مُغِيثًا مَرِيئًا مَرِيعًا نَافِعًا غَيْرَ ضَارٍّ عَاجِلًا غَيْرَ آجِلٍ',
        transliteration:
            'Allahumma asqinaa ghaythan mugheethan maree\'an maree\'an naafi\'an ghayra daarrin \'aajilan ghayra aajil',
        translation:
            'O Allah, send us rain that is helpful, wholesome, fertile, beneficial and not harmful, soon and not delayed.',
        reference: 'Sunan Abu Dawud 1169',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ أَغِثْنَا، اللَّهُمَّ أَغِثْنَا، اللَّهُمَّ أَغِثْنَا',
        transliteration:
            'Allahumma aghithna, Allahumma aghithna, Allahumma aghithna',
        translation:
            'O Allah, send us rain. O Allah, send us rain. O Allah, send us rain.',
        reference: 'Sahih al-Bukhari 1013',
        repeatCount: 3,
      ),
      Dua(
        arabic:
            'اللَّهُمَّ اسْقِ عِبَادَكَ وَبَهَائِمَكَ، وَانْشُرْ رَحْمَتَكَ، وَأَحْيِ بَلَدَكَ الْمَيِّتَ',
        transliteration:
            'Allahumma asqi \'ibaadaka wa bahaa\'imaka, wanshur rahmataka, wa ahyi baladakal-mayyit',
        translation:
            'O Allah, provide water for Your servants and Your cattle, spread Your mercy and give life to Your dead land.',
        reference: 'Sunan Abu Dawud 1176',
      ),
      Dua(
        arabic:
            'سُبْحَانَ الَّذِي يُسَبِّحُ الرَّعْدُ بِحَمْدِهِ وَالْمَلَائِكَةُ مِنْ خِيفَتِهِ',
        transliteration:
            'Subhaanal-ladhi yusabbihur-ra\'du bihamdihi wal-malaa\'ikatu min kheefatih',
        translation:
            'How perfect He is, the One Whom thunder glorifies with His praise, and so do the angels out of fear of Him. (Said when hearing thunder)',
        reference: 'Muwatta Malik 2/992',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ لَا تَقْتُلْنَا بِغَضَبِكَ، وَلَا تُهْلِكْنَا بِعَذَابِكَ، وَعَافِنَا قَبْلَ ذَلِكَ',
        transliteration:
            'Allahumma la taqtulna bighadabika, wa la tuhlikna bi\'adhaabika, wa \'aafina qabla dhalik',
        translation:
            'O Allah, do not kill us with Your anger, and do not destroy us with Your punishment, and grant us safety before that. (Said during strong winds)',
        reference: 'Sunan at-Tirmidhi 3449',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَهَا وَخَيْرَ مَا فِيهَا وَخَيْرَ مَا أُرْسِلَتْ بِهِ، وَأَعُوذُ بِكَ مِنْ شَرِّهَا وَشَرِّ مَا فِيهَا وَشَرِّ مَا أُرْسِلَتْ بِهِ',
        transliteration:
            'Allahumma inni as\'aluka khayrahaa wa khayra ma feehaa wa khayra ma ursilat bih, wa a\'oodhu bika min sharrihaa wa sharri ma feehaa wa sharri ma ursilat bih',
        translation:
            'O Allah, I ask You for its good, the good of what it contains, and the good of what it was sent with. And I seek refuge in You from its evil, the evil of what it contains, and the evil of what it was sent with. (Said when seeing wind or clouds)',
        reference: 'Sahih Muslim 899',
      ),
    ],
  ),

  // ============================================================
  // 9. Healing & Sickness (أدعية الشفاء)
  // ============================================================
  DuaCategory(
    id: 'healing',
    title: 'Healing & Sickness',
    titleArabic: 'أدعية الشفاء',
    icon: 'healing',
    duas: [
      Dua(
        arabic:
            'اللَّهُمَّ رَبَّ النَّاسِ أَذْهِبِ الْبَأسَ، اشْفِهِ وَأَنْتَ الشَّافِي، لَا شِفَاءَ إِلَّا شِفَاؤُكَ، شِفَاءً لَا يُغَادِرُ سَقَمًا',
        transliteration:
            'Allahumma Rabban-naasi adhhibil-ba\'sa, ishfihi wa antash-Shaafi, la shifaa\'a illa shifaa\'uka, shifaa\'an la yughaadiru saqaman',
        translation:
            'O Allah, Lord of mankind, remove the illness, cure the disease. You are the One Who cures. There is no cure except Your cure. Grant a cure that leaves no illness.',
        reference: 'Sahih al-Bukhari 5675',
      ),
      Dua(
        arabic:
            'أَسْأَلُ اللَّهَ الْعَظِيمَ رَبَّ الْعَرْشِ الْعَظِيمِ أَنْ يَشْفِيَكَ',
        transliteration:
            'As\'alullaahal-\'Adheema Rabbal-\'Arshil-\'Adheemi an yashfiyak',
        translation:
            'I ask Allah the Most Great, Lord of the Magnificent Throne, to cure you.',
        reference: 'Sunan at-Tirmidhi 2083',
        repeatCount: 7,
      ),
      Dua(
        arabic:
            'بِسْمِ اللَّهِ أَرْقِيكَ، مِنْ كُلِّ شَيْءٍ يُؤْذِيكَ، مِنْ شَرِّ كُلِّ نَفْسٍ أَوْ عَيْنِ حَاسِدٍ اللَّهُ يَشْفِيكَ، بِسْمِ اللَّهِ أَرْقِيكَ',
        transliteration:
            'Bismillahi arqeeka, min kulli shay\'in yu\'dheeka, min sharri kulli nafsin aw \'ayni haasidin Allahu yashfeeka, bismillahi arqeek',
        translation:
            'In the name of Allah I perform ruqyah for you, from everything that is harming you, from the evil of every soul or envious eye, may Allah heal you. In the name of Allah I perform ruqyah for you.',
        reference: 'Sahih Muslim 2186',
      ),
      Dua(
        arabic:
            'أَعُوذُ بِعِزَّةِ اللَّهِ وَقُدْرَتِهِ مِنْ شَرِّ مَا أَجِدُ وَأُحَاذِرُ',
        transliteration:
            'A\'oodhu bi\'izzatillahi wa qudratihi min sharri ma ajidu wa uhaadhir',
        translation:
            'I seek refuge in the might and power of Allah from the evil of what I feel and am wary of.',
        reference: 'Sahih Muslim 2202',
        repeatCount: 7,
      ),
      Dua(
        arabic:
            'بِسْمِ اللَّهِ، بِسْمِ اللَّهِ، بِسْمِ اللَّهِ، أَعُوذُ بِاللَّهِ وَقُدْرَتِهِ مِنْ شَرِّ مَا أَجِدُ وَأُحَاذِرُ',
        transliteration:
            'Bismillah, Bismillah, Bismillah, a\'oodhu billahi wa qudratihi min sharri ma ajidu wa uhaadhir',
        translation:
            'In the name of Allah (three times), I seek refuge in Allah and His power from the evil of what I find and am cautious of. (Place hand on the place of pain)',
        reference: 'Sahih Muslim 2202',
        repeatCount: 7,
      ),
      Dua(
        arabic:
            'اللَّهُمَّ عَافِنِي فِي بَدَنِي، اللَّهُمَّ عَافِنِي فِي سَمْعِي، اللَّهُمَّ عَافِنِي فِي بَصَرِي',
        transliteration:
            'Allahumma \'aafini fi badani, Allahumma \'aafini fi sam\'i, Allahumma \'aafini fi basari',
        translation:
            'O Allah, grant my body health. O Allah, grant my hearing health. O Allah, grant my sight health.',
        reference: 'Sunan Abu Dawud 5090',
        repeatCount: 3,
      ),
      Dua(
        arabic:
            'لَا بَأْسَ طَهُورٌ إِنْ شَاءَ اللَّهُ',
        transliteration: 'La ba\'sa tahoorun in shaa\'Allah',
        translation:
            'No harm, it is a purification, if Allah wills. (Said when visiting the sick)',
        reference: 'Sahih al-Bukhari 3616',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ اشْفِ عَبْدَكَ يَنْكَأُ لَكَ عَدُوًّا، أَوْ يَمْشِي لَكَ إِلَى صَلَاةٍ',
        transliteration:
            'Allahummashfi \'abdaka yanka\'u laka \'aduwwan, aw yamshi laka ila salaah',
        translation:
            'O Allah, heal Your servant who may then fight for Your cause or walk to prayer for Your sake.',
        reference: 'Sunan Abu Dawud 3107',
      ),
    ],
  ),

  // ============================================================
  // 10. Forgiveness (أدعية الاستغفار)
  // ============================================================
  DuaCategory(
    id: 'forgiveness',
    title: 'Forgiveness',
    titleArabic: 'أدعية الاستغفار',
    icon: 'forgiveness',
    duas: [
      Dua(
        arabic:
            'اللَّهُمَّ أَنْتَ رَبِّي لَا إِلَهَ إِلَّا أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ، وَأَبُوءُ لَكَ بِذَنْبِي فَاغْفِرْ لِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ',
        transliteration:
            'Allahumma anta Rabbi la ilaha illa ant, khalaqtani wa ana \'abduk, wa ana \'ala \'ahdika wa wa\'dika mastata\'t, a\'oodhu bika min sharri ma sana\'t, aboo\'u laka bini\'matika \'alayya, wa aboo\'u laka bidhanbi faghfir li fa-innahu la yaghfirudh-dhunooba illa ant',
        translation:
            'O Allah, You are my Lord, none has the right to be worshipped except You. You created me and I am Your servant, and I abide to Your covenant and promise as best I can. I seek refuge in You from the evil of what I have done. I acknowledge Your favour upon me, and I acknowledge my sin, so forgive me, for verily none can forgive sins except You. (Sayyid al-Istighfar)',
        reference: 'Sahih al-Bukhari 6306',
      ),
      Dua(
        arabic: 'أَسْتَغْفِرُ اللَّهَ الْعَظِيمَ الَّذِي لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ وَأَتُوبُ إِلَيْهِ',
        transliteration:
            'Astaghfirullahal-\'Adheemal-ladhi la ilaha illa Huwal-Hayyul-Qayyoomu wa atoobu ilayh',
        translation:
            'I seek the forgiveness of Allah the Mighty, Whom there is none worthy of worship except Him, the Living, the Sustainer, and I turn to Him in repentance.',
        reference: 'Sunan Abu Dawud 1517',
      ),
      Dua(
        arabic: 'رَبِّ اغْفِرْ لِي وَتُبْ عَلَيَّ إِنَّكَ أَنْتَ التَّوَّابُ الرَّحِيمُ',
        transliteration:
            'Rabbighfir li wa tub \'alayya innaka antat-Tawwaabur-Raheem',
        translation:
            'My Lord, forgive me and accept my repentance. You are the Ever-Accepting of repentance, the Most Merciful.',
        reference: 'Sunan Abu Dawud 1516',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ إِنِّي ظَلَمْتُ نَفْسِي ظُلْمًا كَثِيرًا، وَلَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ، فَاغْفِرْ لِي مَغْفِرَةً مِنْ عِنْدِكَ وَارْحَمْنِي، إِنَّكَ أَنْتَ الْغَفُورُ الرَّحِيمُ',
        transliteration:
            'Allahumma inni dhalamtu nafsi dhulman katheeran, wa la yaghfirudh-dhunooba illa ant, faghfir li maghfiratan min \'indika warhamni, innaka antal-Ghafoorur-Raheem',
        translation:
            'O Allah, I have greatly wronged myself, and no one forgives sins but You. So, grant me forgiveness from You and have mercy on me. Surely, You are the Forgiving, the Merciful.',
        reference: 'Sahih al-Bukhari 834',
      ),
      Dua(
        arabic:
            'رَبَّنَا ظَلَمْنَا أَنْفُسَنَا وَإِنْ لَمْ تَغْفِرْ لَنَا وَتَرْحَمْنَا لَنَكُونَنَّ مِنَ الْخَاسِرِينَ',
        transliteration:
            'Rabbana dhalamna anfusanaa wa in lam taghfir lanaa wa tarhamnaa lanakoonanna minal-khaasireen',
        translation:
            'Our Lord, we have wronged ourselves, and if You do not forgive us and have mercy upon us, we will surely be among the losers.',
        reference: 'Quran 7:23',
      ),
      Dua(
        arabic:
            'رَبِّ إِنِّي ظَلَمْتُ نَفْسِي فَاغْفِرْ لِي',
        transliteration: 'Rabbi inni dhalamtu nafsi faghfir li',
        translation: 'My Lord, indeed I have wronged myself, so forgive me.',
        reference: 'Quran 28:16',
      ),
      Dua(
        arabic: 'أَسْتَغْفِرُ اللَّهَ وَأَتُوبُ إِلَيْهِ',
        transliteration: 'Astaghfirullaha wa atoobu ilayh',
        translation:
            'I seek the forgiveness of Allah and repent to Him.',
        reference: 'Sahih al-Bukhari 6307',
      ),
      Dua(
        arabic:
            'رَبَّنَا اغْفِرْ لَنَا ذُنُوبَنَا وَإِسْرَافَنَا فِي أَمْرِنَا وَثَبِّتْ أَقْدَامَنَا وَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ',
        transliteration:
            'Rabbanagh-fir lanaa dhunoobanaa wa israafanaa fi amrinaa wa thabbit aqdaamanaa wansurnaa \'alal-qawmil-kaafireen',
        translation:
            'Our Lord, forgive us our sins and the excess in our affairs and plant firmly our feet and give us victory over the disbelieving people.',
        reference: 'Quran 3:147',
      ),
      Dua(
        arabic:
            'رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَسِينَا أَوْ أَخْطَأْنَا، رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا، رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ، وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا، أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ',
        transliteration:
            'Rabbana la tu\'aakhidhna in naseena aw akhta\'na. Rabbana wa la tahmil \'alayna isran kama hamaltahu \'alal-ladheena min qablina. Rabbana wa la tuhammilna ma la taaqata lana bih. Wa\'fu \'anna waghfir lana warhamna. Anta mawlana fansurna \'alal-qawmil-kaafireen',
        translation:
            'Our Lord, do not impose blame upon us if we have forgotten or erred. Our Lord, and lay not upon us a burden like that which You laid upon those before us. Our Lord, and burden us not with that which we have no ability to bear. And pardon us; and forgive us; and have mercy upon us. You are our protector, so give us victory over the disbelieving people.',
        reference: 'Quran 2:286',
      ),
    ],
  ),

  // ============================================================
  // 11. Parents (أدعية للوالدين)
  // ============================================================
  DuaCategory(
    id: 'parents',
    title: 'Parents',
    titleArabic: 'أدعية للوالدين',
    icon: 'parents',
    duas: [
      Dua(
        arabic: 'رَبِّ ارْحَمْهُمَا كَمَا رَبَّيَانِي صَغِيرًا',
        transliteration: 'Rabbir-hamhuma kama rabbayaani sagheera',
        translation:
            'My Lord, have mercy upon them as they brought me up when I was small.',
        reference: 'Quran 17:24',
      ),
      Dua(
        arabic:
            'رَبَّنَا اغْفِرْ لِي وَلِوَالِدَيَّ وَلِلْمُؤْمِنِينَ يَوْمَ يَقُومُ الْحِسَابُ',
        transliteration:
            'Rabbanagh-fir li wa liwaalidayya wa lil-mu\'mineena yawma yaqoomul-hisaab',
        translation:
            'Our Lord, forgive me and my parents and the believers the Day the account is established.',
        reference: 'Quran 14:41',
      ),
      Dua(
        arabic:
            'رَبِّ اغْفِرْ لِي وَلِوَالِدَيَّ وَلِمَنْ دَخَلَ بَيْتِيَ مُؤْمِنًا وَلِلْمُؤْمِنِينَ وَالْمُؤْمِنَاتِ',
        transliteration:
            'Rabbigh-fir li wa liwaalidayya wa liman dakhala baytiya mu\'minan wa lil-mu\'mineena wal-mu\'minaat',
        translation:
            'My Lord, forgive me and my parents and whoever enters my house a believer and the believing men and believing women.',
        reference: 'Quran 71:28',
      ),
      Dua(
        arabic:
            'رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَى وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَصْلِحْ لِي فِي ذُرِّيَّتِي إِنِّي تُبْتُ إِلَيْكَ وَإِنِّي مِنَ الْمُسْلِمِينَ',
        transliteration:
            'Rabbi awzi\'ni an ashkura ni\'matakal-lati an\'amta \'alayya wa \'ala waalidayya wa an a\'mala saalihan tardaahu wa aslih li fi dhurriyyati inni tubtu ilayka wa inni minal-muslimeen',
        translation:
            'My Lord, enable me to be grateful for Your favor which You have bestowed upon me and upon my parents and to work righteousness of which You will approve and make righteous for me my offspring. Indeed, I have repented to You, and indeed, I am of the Muslims.',
        reference: 'Quran 46:15',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ اغْفِرْ لِوَالِدَيَّ وَارْحَمْهُمَا وَعَافِهِمَا وَاعْفُ عَنْهُمَا',
        transliteration:
            'Allahummagh-fir liwaalidayya warhamhuma wa \'aafihima wa\'fu \'anhuma',
        translation:
            'O Allah, forgive my parents, have mercy upon them, grant them well-being, and pardon them.',
        reference: 'Sahih Muslim 920 (derived)',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ اغْفِرْ لَهُ وَارْحَمْهُ وَعَافِهِ وَاعْفُ عَنْهُ، وَأَكْرِمْ نُزُلَهُ، وَوَسِّعْ مُدْخَلَهُ، وَاغْسِلْهُ بِالْمَاءِ وَالثَّلْجِ وَالْبَرَدِ، وَنَقِّهِ مِنَ الْخَطَايَا كَمَا نَقَّيْتَ الثَّوْبَ الْأَبْيَضَ مِنَ الدَّنَسِ',
        transliteration:
            'Allahummagh-fir lahu warhamhu wa \'aafihi wa\'fu \'anhu, wa akrim nuzulahu, wa wassi\' mudkhalahu, waghsilhu bil-maa\'i wath-thalji wal-barad, wa naqqihi minal-khataaya kama naqqaytath-thawbal-abyada minad-danas',
        translation:
            'O Allah, forgive him and have mercy on him and give him strength and pardon him. Be generous to him and cause his entrance to be wide and wash him with water and snow and ice. Purify him of his sins as a white garment is purified of filth. (For deceased parents)',
        reference: 'Sahih Muslim 963',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ أَبْدِلْهُ دَارًا خَيْرًا مِنْ دَارِهِ، وَأَهْلًا خَيْرًا مِنْ أَهْلِهِ، وَأَدْخِلْهُ الْجَنَّةَ وَأَعِذْهُ مِنْ عَذَابِ الْقَبْرِ وَمِنْ عَذَابِ النَّارِ',
        transliteration:
            'Allahumma abdilhu daaran khayran min daarihi, wa ahlan khayran min ahlihi, wa adkhilhul-Jannata wa a\'idhhu min \'adhaabil-qabri wa min \'adhaabin-naar',
        translation:
            'O Allah, exchange his dwelling for a better dwelling, and his family for a better family. Admit him into Paradise and protect him from the punishment of the grave and from the punishment of the Fire. (For deceased parents)',
        reference: 'Sahih Muslim 963',
      ),
      Dua(
        arabic:
            'رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَى وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَدْخِلْنِي بِرَحْمَتِكَ فِي عِبَادِكَ الصَّالِحِينَ',
        transliteration:
            'Rabbi awzi\'ni an ashkura ni\'matakal-lati an\'amta \'alayya wa \'ala waalidayya wa an a\'mala saalihan tardaahu wa adkhilni birahmatika fi \'ibaadikas-saaliheen',
        translation:
            'My Lord, enable me to be grateful for Your favor which You have bestowed upon me and upon my parents and to do righteousness of which You approve. And admit me by Your mercy into the company of Your righteous servants.',
        reference: 'Quran 27:19',
      ),
    ],
  ),

  // ============================================================
  // 12. Difficulty & Distress (أدعية الكرب)
  // ============================================================
  DuaCategory(
    id: 'distress',
    title: 'Difficulty & Distress',
    titleArabic: 'أدعية الكرب',
    icon: 'distress',
    duas: [
      Dua(
        arabic:
            'لَا إِلَهَ إِلَّا اللَّهُ الْعَظِيمُ الْحَلِيمُ، لَا إِلَهَ إِلَّا اللَّهُ رَبُّ الْعَرْشِ الْعَظِيمِ، لَا إِلَهَ إِلَّا اللَّهُ رَبُّ السَّمَاوَاتِ وَرَبُّ الْأَرْضِ وَرَبُّ الْعَرْشِ الْكَرِيمِ',
        transliteration:
            'La ilaha illallahul-\'Adheemul-Haleem, la ilaha illallahu Rabbul-\'Arshil-\'Adheem, la ilaha illallahu Rabbus-samaawaati wa Rabbul-ardi wa Rabbul-\'Arshil-Kareem',
        translation:
            'None has the right to be worshipped except Allah, the Magnificent, the Forbearing. None has the right to be worshipped except Allah, Lord of the Magnificent Throne. None has the right to be worshipped except Allah, Lord of the heavens, Lord of the earth and Lord of the Noble Throne.',
        reference: 'Sahih al-Bukhari 6346',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ رَحْمَتَكَ أَرْجُو فَلَا تَكِلْنِي إِلَى نَفْسِي طَرْفَةَ عَيْنٍ، وَأَصْلِحْ لِي شَأْنِي كُلَّهُ، لَا إِلَهَ إِلَّا أَنْتَ',
        transliteration:
            'Allahumma rahmataka arjoo fala takilni ila nafsi tarfata \'ayn, wa aslih li sha\'ni kullahu, la ilaha illa ant',
        translation:
            'O Allah, it is Your mercy that I hope for, so do not leave me in charge of my affairs even for a blink of an eye, and rectify for me all of my affairs. None has the right to be worshipped except You.',
        reference: 'Sunan Abu Dawud 5090',
      ),
      Dua(
        arabic:
            'لَا إِلَهَ إِلَّا أَنْتَ سُبْحَانَكَ إِنِّي كُنْتُ مِنَ الظَّالِمِينَ',
        transliteration:
            'La ilaha illa anta subhanaka inni kuntu minadh-dhaalimeen',
        translation:
            'None has the right to be worshipped except You. How perfect You are. Verily, I was among the wrongdoers. (Du\'a of Yunus)',
        reference: 'Quran 21:87',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْهَمِّ وَالْحَزَنِ، وَالْعَجْزِ وَالْكَسَلِ، وَالْبُخْلِ وَالْجُبْنِ، وَضَلَعِ الدَّيْنِ وَغَلَبَةِ الرِّجَالِ',
        transliteration:
            'Allahumma inni a\'oodhu bika minal-hammi wal-hazan, wal-\'ajzi wal-kasal, wal-bukhli wal-jubn, wa dala\'id-dayni wa ghalabatir-rijaal',
        translation:
            'O Allah, I seek refuge in You from worry and grief, from helplessness and laziness, from cowardice and stinginess, and from the burden of debts and from being overpowered by men.',
        reference: 'Sahih al-Bukhari 6369',
      ),
      Dua(
        arabic:
            'حَسْبُنَا اللَّهُ وَنِعْمَ الْوَكِيلُ',
        transliteration: 'Hasbunallahu wa ni\'mal-Wakeel',
        translation:
            'Allah is sufficient for us, and He is the best Disposer of affairs.',
        reference: 'Quran 3:173',
      ),
      Dua(
        arabic:
            'إِنَّا لِلَّهِ وَإِنَّا إِلَيْهِ رَاجِعُونَ، اللَّهُمَّ أْجُرْنِي فِي مُصِيبَتِي وَأَخْلِفْ لِي خَيْرًا مِنْهَا',
        transliteration:
            'Inna lillahi wa inna ilayhi raaji\'oon. Allahumma\'jurni fi museebati wa akhlif li khayran minha',
        translation:
            'To Allah we belong and unto Him is our return. O Allah, recompense me for my affliction and replace it for me with something better.',
        reference: 'Sahih Muslim 918',
      ),
      Dua(
        arabic:
            'اللَّهُمَّ لَا سَهْلَ إِلَّا مَا جَعَلْتَهُ سَهْلًا، وَأَنْتَ تَجْعَلُ الْحَزْنَ إِذَا شِئْتَ سَهْلًا',
        transliteration:
            'Allahumma la sahla illa ma ja\'altahu sahlan, wa anta taj\'alul-hazna idha shi\'ta sahla',
        translation:
            'O Allah, there is no ease except in that which You have made easy, and You make the difficulty, if You wish, easy.',
        reference: 'Sahih Ibn Hibban 974',
      ),
      Dua(
        arabic:
            'اللَّهُ اللَّهُ رَبِّي لَا أُشْرِكُ بِهِ شَيْئًا',
        transliteration: 'Allahu Allahu Rabbi la ushriku bihi shay\'a',
        translation:
            'Allah, Allah is my Lord. I do not associate anything with Him.',
        reference: 'Sunan Abu Dawud 1525',
      ),
      Dua(
        arabic:
            'لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ',
        transliteration: 'La hawla wa la quwwata illa billah',
        translation:
            'There is no might nor power except with Allah.',
        reference: 'Sahih al-Bukhari 4205',
      ),
    ],
  ),
];
