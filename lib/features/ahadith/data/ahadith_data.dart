import 'models/hadith.dart';

const List<HadithCollection> hadithCollections = [
  // ============================================================
  // 1. Sahih al-Bukhari
  // ============================================================
  HadithCollection(
    id: 'bukhari',
    name: 'Sahih al-Bukhari',
    nameArabic: 'صحيح البخاري',
    author: 'Imam al-Bukhari',
    hadithCount: 7563,
    books: [
      // Book 1: Book of Revelation
      HadithBook(
        bookNumber: 1,
        name: 'Book of Revelation',
        nameArabic: 'كتاب بدء الوحي',
        hadiths: [
          Hadith(
            number: 1,
            arabic:
                'إِنَّمَا الْأَعْمَالُ بِالنِّيَّاتِ، وَإِنَّمَا لِكُلِّ امْرِئٍ مَا نَوَى، فَمَنْ كَانَتْ هِجْرَتُهُ إِلَى اللَّهِ وَرَسُولِهِ فَهِجْرَتُهُ إِلَى اللَّهِ وَرَسُولِهِ، وَمَنْ كَانَتْ هِجْرَتُهُ لِدُنْيَا يُصِيبُهَا أَوِ امْرَأَةٍ يَنْكِحُهَا فَهِجْرَتُهُ إِلَى مَا هَاجَرَ إِلَيْهِ',
            translation:
                'Actions are judged by intentions, and every person will get what they intended. So whoever emigrated for the sake of Allah and His Messenger, then his emigration is for Allah and His Messenger. And whoever emigrated for worldly gain or to marry a woman, then his emigration is for what he emigrated for.',
            narrator: 'Umar ibn al-Khattab',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 2,
            arabic:
                'أَخْبِرْنِي عَنِ الْإِسْلَامِ، فَقَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ: الْإِسْلَامُ أَنْ تَشْهَدَ أَنْ لَا إِلَهَ إِلَّا اللَّهُ وَأَنَّ مُحَمَّدًا رَسُولُ اللَّهِ، وَتُقِيمَ الصَّلَاةَ، وَتُؤْتِيَ الزَّكَاةَ، وَتَصُومَ رَمَضَانَ، وَتَحُجَّ الْبَيْتَ إِنِ اسْتَطَعْتَ إِلَيْهِ سَبِيلًا',
            translation:
                'Tell me about Islam. The Messenger of Allah (peace be upon him) said: Islam is to testify that there is no god but Allah and that Muhammad is the Messenger of Allah, to establish prayer, to pay zakat, to fast Ramadan, and to make pilgrimage to the House if you are able to.',
            narrator: 'Umar ibn al-Khattab',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 3,
            arabic:
                'كَانَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يُوحَى إِلَيْهِ وَهُوَ بِغَارِ حِرَاءٍ، فَجَاءَهُ الْمَلَكُ فَقَالَ: اقْرَأْ، قَالَ: مَا أَنَا بِقَارِئٍ، فَأَخَذَنِي فَغَطَّنِي حَتَّى بَلَغَ مِنِّي الْجَهْدَ ثُمَّ أَرْسَلَنِي فَقَالَ: اقْرَأْ',
            translation:
                'The Prophet (peace be upon him) used to receive revelation while he was in the cave of Hira. The angel came to him and said: Read! He said: I cannot read. The angel seized me and pressed me until I could bear it no more, then released me and said: Read!',
            narrator: 'Aisha',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 4,
            arabic:
                'أَوَّلُ مَا بُدِئَ بِهِ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ مِنَ الْوَحْيِ الرُّؤْيَا الصَّالِحَةُ فِي النَّوْمِ، فَكَانَ لَا يَرَى رُؤْيَا إِلَّا جَاءَتْ مِثْلَ فَلَقِ الصُّبْحِ',
            translation:
                'The first thing that the Messenger of Allah (peace be upon him) received of revelation was true dreams in sleep. He never saw a dream except that it came like the break of dawn.',
            narrator: 'Aisha',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 5,
            arabic:
                'أَحْيَانًا يَأْتِينِي مِثْلَ صَلْصَلَةِ الْجَرَسِ وَهُوَ أَشَدُّهُ عَلَيَّ فَيُفْصَمُ عَنِّي وَقَدْ وَعَيْتُ عَنْهُ مَا قَالَ، وَأَحْيَانًا يَتَمَثَّلُ لِيَ الْمَلَكُ رَجُلًا فَيُكَلِّمُنِي فَأَعِي مَا يَقُولُ',
            translation:
                'Sometimes it comes to me like the ringing of a bell, and that is the hardest on me. Then it passes and I have understood what was said. And sometimes the angel comes to me in the form of a man and speaks to me, and I understand what he says.',
            narrator: 'Aisha',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
      // Book 2: Book of Faith
      HadithBook(
        bookNumber: 2,
        name: 'Book of Faith',
        nameArabic: 'كتاب الإيمان',
        hadiths: [
          Hadith(
            number: 6,
            arabic:
                'بُنِيَ الْإِسْلَامُ عَلَى خَمْسٍ: شَهَادَةِ أَنْ لَا إِلَهَ إِلَّا اللَّهُ وَأَنَّ مُحَمَّدًا رَسُولُ اللَّهِ، وَإِقَامِ الصَّلَاةِ، وَإِيتَاءِ الزَّكَاةِ، وَالْحَجِّ، وَصَوْمِ رَمَضَانَ',
            translation:
                'Islam is built upon five pillars: the testimony that there is no god but Allah and that Muhammad is the Messenger of Allah, establishing prayer, paying zakat, making pilgrimage, and fasting Ramadan.',
            narrator: 'Abdullah ibn Umar',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 7,
            arabic:
                'لَا يُؤْمِنُ أَحَدُكُمْ حَتَّى يُحِبَّ لِأَخِيهِ مَا يُحِبُّ لِنَفْسِهِ',
            translation:
                'None of you truly believes until he loves for his brother what he loves for himself.',
            narrator: 'Anas ibn Malik',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 8,
            arabic:
                'ثَلَاثٌ مَنْ كُنَّ فِيهِ وَجَدَ حَلَاوَةَ الْإِيمَانِ: أَنْ يَكُونَ اللَّهُ وَرَسُولُهُ أَحَبَّ إِلَيْهِ مِمَّا سِوَاهُمَا، وَأَنْ يُحِبَّ الْمَرْءَ لَا يُحِبُّهُ إِلَّا لِلَّهِ، وَأَنْ يَكْرَهَ أَنْ يَعُودَ فِي الْكُفْرِ كَمَا يَكْرَهُ أَنْ يُقْذَفَ فِي النَّارِ',
            translation:
                'There are three qualities whoever has them will taste the sweetness of faith: that Allah and His Messenger are dearer to him than anything else, that he loves a person only for the sake of Allah, and that he hates to return to disbelief as he hates to be thrown into the Fire.',
            narrator: 'Anas ibn Malik',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 9,
            arabic:
                'الْمُسْلِمُ مَنْ سَلِمَ الْمُسْلِمُونَ مِنْ لِسَانِهِ وَيَدِهِ، وَالْمُهَاجِرُ مَنْ هَجَرَ مَا نَهَى اللَّهُ عَنْهُ',
            translation:
                'A Muslim is one from whose tongue and hand other Muslims are safe, and an emigrant (muhajir) is one who abandons what Allah has forbidden.',
            narrator: 'Abdullah ibn Amr',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 10,
            arabic:
                'وَاللَّهِ لَا يُؤْمِنُ، وَاللَّهِ لَا يُؤْمِنُ، وَاللَّهِ لَا يُؤْمِنُ، قِيلَ: مَنْ يَا رَسُولَ اللَّهِ؟ قَالَ: الَّذِي لَا يَأْمَنُ جَارُهُ بَوَائِقَهُ',
            translation:
                'By Allah, he does not believe! By Allah, he does not believe! By Allah, he does not believe! It was said: Who, O Messenger of Allah? He said: The one whose neighbor is not safe from his harm.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
      // Book 3: Book of Knowledge
      HadithBook(
        bookNumber: 3,
        name: 'Book of Knowledge',
        nameArabic: 'كتاب العلم',
        hadiths: [
          Hadith(
            number: 11,
            arabic:
                'مَنْ يُرِدِ اللَّهُ بِهِ خَيْرًا يُفَقِّهْهُ فِي الدِّينِ',
            translation:
                'Whoever Allah wishes good for, He gives him understanding of the religion.',
            narrator: 'Muawiyah ibn Abi Sufyan',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 12,
            arabic:
                'مَنْ سَلَكَ طَرِيقًا يَلْتَمِسُ فِيهِ عِلْمًا سَهَّلَ اللَّهُ لَهُ طَرِيقًا إِلَى الْجَنَّةِ',
            translation:
                'Whoever travels a path seeking knowledge, Allah will make easy for him a path to Paradise.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 13,
            arabic:
                'بَلِّغُوا عَنِّي وَلَوْ آيَةً، وَحَدِّثُوا عَنْ بَنِي إِسْرَائِيلَ وَلَا حَرَجَ، وَمَنْ كَذَبَ عَلَيَّ مُتَعَمِّدًا فَلْيَتَبَوَّأْ مَقْعَدَهُ مِنَ النَّارِ',
            translation:
                'Convey from me, even if it is one verse. And narrate from the Children of Israel, there is no harm. And whoever deliberately lies about me, let him take his seat in the Fire.',
            narrator: 'Abdullah ibn Amr',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 14,
            arabic:
                'إِنَّ اللَّهَ لَا يَقْبِضُ الْعِلْمَ انْتِزَاعًا يَنْتَزِعُهُ مِنَ الْعِبَادِ، وَلَكِنْ يَقْبِضُ الْعِلْمَ بِقَبْضِ الْعُلَمَاءِ، حَتَّى إِذَا لَمْ يُبْقِ عَالِمًا اتَّخَذَ النَّاسُ رُءُوسًا جُهَّالًا فَسُئِلُوا فَأَفْتَوْا بِغَيْرِ عِلْمٍ فَضَلُّوا وَأَضَلُّوا',
            translation:
                'Allah does not take away knowledge by snatching it from people, but He takes it away by taking away the scholars, until when no scholar remains, the people take ignorant leaders who are asked and give rulings without knowledge, so they go astray and lead others astray.',
            narrator: 'Abdullah ibn Amr',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 15,
            arabic:
                'خَيْرُكُمْ مَنْ تَعَلَّمَ الْقُرْآنَ وَعَلَّمَهُ',
            translation:
                'The best of you are those who learn the Quran and teach it.',
            narrator: 'Uthman ibn Affan',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
    ],
  ),

  // ============================================================
  // 2. Sahih Muslim
  // ============================================================
  HadithCollection(
    id: 'muslim',
    name: 'Sahih Muslim',
    nameArabic: 'صحيح مسلم',
    author: 'Imam Muslim',
    hadithCount: 7500,
    books: [
      // Book 1: Book of Faith
      HadithBook(
        bookNumber: 1,
        name: 'Book of Faith',
        nameArabic: 'كتاب الإيمان',
        hadiths: [
          Hadith(
            number: 1,
            arabic:
                'الْإِيمَانُ أَنْ تُؤْمِنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ وَالْيَوْمِ الْآخِرِ وَتُؤْمِنَ بِالْقَدَرِ خَيْرِهِ وَشَرِّهِ',
            translation:
                'Faith is to believe in Allah, His angels, His books, His messengers, the Last Day, and to believe in divine destiny, both its good and its evil.',
            narrator: 'Umar ibn al-Khattab',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 2,
            arabic:
                'الْإِحْسَانُ أَنْ تَعْبُدَ اللَّهَ كَأَنَّكَ تَرَاهُ، فَإِنْ لَمْ تَكُنْ تَرَاهُ فَإِنَّهُ يَرَاكَ',
            translation:
                'Excellence (ihsan) is to worship Allah as if you see Him, and if you do not see Him, then indeed He sees you.',
            narrator: 'Umar ibn al-Khattab',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 3,
            arabic:
                'مَنْ غَشَّنَا فَلَيْسَ مِنَّا',
            translation:
                'Whoever cheats us is not one of us.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 4,
            arabic:
                'لَا تَدْخُلُونَ الْجَنَّةَ حَتَّى تُؤْمِنُوا، وَلَا تُؤْمِنُوا حَتَّى تَحَابُّوا، أَوَلَا أَدُلُّكُمْ عَلَى شَيْءٍ إِذَا فَعَلْتُمُوهُ تَحَابَبْتُمْ؟ أَفْشُوا السَّلَامَ بَيْنَكُمْ',
            translation:
                'You will not enter Paradise until you believe, and you will not believe until you love one another. Shall I not tell you of something that if you do it, you will love one another? Spread the greeting of peace amongst yourselves.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 5,
            arabic:
                'الدِّينُ النَّصِيحَةُ، قُلْنَا: لِمَنْ؟ قَالَ: لِلَّهِ وَلِكِتَابِهِ وَلِرَسُولِهِ وَلِأَئِمَّةِ الْمُسْلِمِينَ وَعَامَّتِهِمْ',
            translation:
                'The religion is sincere advice. We said: To whom? He said: To Allah, His Book, His Messenger, the leaders of the Muslims, and their common people.',
            narrator: 'Tamim al-Dari',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
      // Book 2: Book of Purification
      HadithBook(
        bookNumber: 2,
        name: 'Book of Purification',
        nameArabic: 'كتاب الطهارة',
        hadiths: [
          Hadith(
            number: 6,
            arabic:
                'الطُّهُورُ شَطْرُ الْإِيمَانِ، وَالْحَمْدُ لِلَّهِ تَمْلَأُ الْمِيزَانَ، وَسُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ تَمْلَآنِ مَا بَيْنَ السَّمَاوَاتِ وَالْأَرْضِ',
            translation:
                'Purification is half of faith. Alhamdulillah fills the scale. SubhanAllah and Alhamdulillah fill what is between the heavens and the earth.',
            narrator: 'Abu Malik al-Ashari',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 7,
            arabic:
                'إِذَا تَوَضَّأَ الْعَبْدُ الْمُسْلِمُ فَغَسَلَ وَجْهَهُ خَرَجَ مِنْ وَجْهِهِ كُلُّ خَطِيئَةٍ نَظَرَ إِلَيْهَا بِعَيْنَيْهِ مَعَ الْمَاءِ أَوْ مَعَ آخِرِ قَطْرِ الْمَاءِ',
            translation:
                'When a Muslim servant performs ablution and washes his face, every sin he looked at with his eyes comes out from his face with the water, or with the last drop of water.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 8,
            arabic:
                'اسْتَنْزِهُوا مِنَ الْبَوْلِ فَإِنَّ عَامَّةَ عَذَابِ الْقَبْرِ مِنْهُ',
            translation:
                'Be careful to avoid urine, for most of the punishment of the grave is because of it.',
            narrator: 'Anas ibn Malik',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 9,
            arabic:
                'إِذَا اسْتَيْقَظَ أَحَدُكُمْ مِنْ نَوْمِهِ فَلَا يَغْمِسْ يَدَهُ فِي الْإِنَاءِ حَتَّى يَغْسِلَهَا ثَلَاثًا فَإِنَّهُ لَا يَدْرِي أَيْنَ بَاتَتْ يَدُهُ',
            translation:
                'When one of you wakes up from sleep, he should not dip his hand into a vessel until he has washed it three times, for he does not know where his hand has spent the night.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 10,
            arabic:
                'لَوْلَا أَنْ أَشُقَّ عَلَى أُمَّتِي لَأَمَرْتُهُمْ بِالسِّوَاكِ عِنْدَ كُلِّ صَلَاةٍ',
            translation:
                'Were it not that I would make it difficult for my ummah, I would have commanded them to use the miswak (tooth-stick) before every prayer.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
      // Book 3: Book of Prayer
      HadithBook(
        bookNumber: 3,
        name: 'Book of Prayer',
        nameArabic: 'كتاب الصلاة',
        hadiths: [
          Hadith(
            number: 11,
            arabic:
                'أَرَأَيْتُمْ لَوْ أَنَّ نَهْرًا بِبَابِ أَحَدِكُمْ يَغْتَسِلُ مِنْهُ كُلَّ يَوْمٍ خَمْسَ مَرَّاتٍ، هَلْ يَبْقَى مِنْ دَرَنِهِ شَيْءٌ؟ قَالُوا: لَا يَبْقَى مِنْ دَرَنِهِ شَيْءٌ. قَالَ: فَذَلِكَ مَثَلُ الصَّلَوَاتِ الْخَمْسِ يَمْحُو اللَّهُ بِهِنَّ الْخَطَايَا',
            translation:
                'Do you think that if there were a river at the door of one of you and he bathed in it five times a day, would any dirt remain on him? They said: No dirt would remain. He said: That is the likeness of the five daily prayers; Allah wipes away sins by them.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 12,
            arabic:
                'صَلَاةُ الْجَمَاعَةِ أَفْضَلُ مِنْ صَلَاةِ الْفَذِّ بِسَبْعٍ وَعِشْرِينَ دَرَجَةً',
            translation:
                'Prayer in congregation is twenty-seven degrees better than prayer offered individually.',
            narrator: 'Abdullah ibn Umar',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 13,
            arabic:
                'بَيْنَ الرَّجُلِ وَبَيْنَ الشِّرْكِ وَالْكُفْرِ تَرْكُ الصَّلَاةِ',
            translation:
                'Between a man and polytheism and disbelief is the abandonment of prayer.',
            narrator: 'Jabir ibn Abdullah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 14,
            arabic:
                'إِذَا دَخَلَ أَحَدُكُمُ الْمَسْجِدَ فَلَا يَجْلِسْ حَتَّى يُصَلِّيَ رَكْعَتَيْنِ',
            translation:
                'When one of you enters the mosque, he should not sit down until he prays two rak\'ahs.',
            narrator: 'Abu Qatadah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 15,
            arabic:
                'مَنْ صَلَّى الْبَرْدَيْنِ دَخَلَ الْجَنَّةَ',
            translation:
                'Whoever prays the two cool prayers (Fajr and Asr) will enter Paradise.',
            narrator: 'Abu Musa al-Ashari',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
    ],
  ),

  // ============================================================
  // 3. Sunan Abu Dawud
  // ============================================================
  HadithCollection(
    id: 'abu_dawud',
    name: 'Sunan Abu Dawud',
    nameArabic: 'سنن أبي داود',
    author: 'Abu Dawud',
    hadithCount: 5274,
    books: [
      // Book 1: Book of Purification
      HadithBook(
        bookNumber: 1,
        name: 'Book of Purification',
        nameArabic: 'كتاب الطهارة',
        hadiths: [
          Hadith(
            number: 1,
            arabic:
                'لَا يَقْبَلُ اللَّهُ صَلَاةَ أَحَدِكُمْ إِذَا أَحْدَثَ حَتَّى يَتَوَضَّأَ',
            translation:
                'Allah does not accept the prayer of any one of you if he is in a state of impurity until he performs ablution.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 2,
            arabic:
                'مِفْتَاحُ الصَّلَاةِ الطُّهُورُ، وَتَحْرِيمُهَا التَّكْبِيرُ، وَتَحْلِيلُهَا التَّسْلِيمُ',
            translation:
                'The key to prayer is purification, its beginning is the takbir (saying Allahu Akbar), and its ending is the taslim (saying as-salamu alaykum).',
            narrator: 'Ali ibn Abi Talib',
            grade: HadithGrade.hasan,
          ),
          Hadith(
            number: 3,
            arabic:
                'إِنَّ تَحْتَ كُلِّ شَعْرَةٍ جَنَابَةً، فَاغْسِلُوا الشَّعْرَ وَأَنْقُوا الْبَشَرَ',
            translation:
                'Under every hair there is a state of sexual impurity, so wash the hair and cleanse the skin.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.hasan,
          ),
          Hadith(
            number: 4,
            arabic:
                'إِذَا وَجَدَ أَحَدُكُمْ فِي بَطْنِهِ شَيْئًا فَأَشْكَلَ عَلَيْهِ أَخَرَجَ مِنْهُ شَيْءٌ أَمْ لَا، فَلَا يَخْرُجَنَّ مِنَ الْمَسْجِدِ حَتَّى يَسْمَعَ صَوْتًا أَوْ يَجِدَ رِيحًا',
            translation:
                'If one of you feels something in his stomach and is unsure whether something came out or not, he should not leave the mosque until he hears a sound or perceives a smell.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 5,
            arabic:
                'الْمَاءُ طَهُورٌ لَا يُنَجِّسُهُ شَيْءٌ',
            translation:
                'Water is pure and nothing makes it impure.',
            narrator: 'Abu Said al-Khudri',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
      // Book 2: Book of Prayer
      HadithBook(
        bookNumber: 2,
        name: 'Book of Prayer',
        nameArabic: 'كتاب الصلاة',
        hadiths: [
          Hadith(
            number: 6,
            arabic:
                'مُرُوا أَوْلَادَكُمْ بِالصَّلَاةِ وَهُمْ أَبْنَاءُ سَبْعِ سِنِينَ، وَاضْرِبُوهُمْ عَلَيْهَا وَهُمْ أَبْنَاءُ عَشْرٍ، وَفَرِّقُوا بَيْنَهُمْ فِي الْمَضَاجِعِ',
            translation:
                'Command your children to pray when they are seven years old, and discipline them for it when they are ten, and separate them in their beds.',
            narrator: 'Abdullah ibn Amr',
            grade: HadithGrade.hasan,
          ),
          Hadith(
            number: 7,
            arabic:
                'صَلُّوا كَمَا رَأَيْتُمُونِي أُصَلِّي',
            translation:
                'Pray as you have seen me praying.',
            narrator: 'Malik ibn al-Huwayrith',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 8,
            arabic:
                'إِنَّ أَوَّلَ مَا يُحَاسَبُ بِهِ الْعَبْدُ يَوْمَ الْقِيَامَةِ مِنْ عَمَلِهِ صَلَاتُهُ، فَإِنْ صَلُحَتْ فَقَدْ أَفْلَحَ وَأَنْجَحَ، وَإِنْ فَسَدَتْ فَقَدْ خَابَ وَخَسِرَ',
            translation:
                'The first thing a servant will be held accountable for on the Day of Judgment is his prayer. If it is sound, he will have succeeded and prospered. If it is deficient, he will have failed and lost.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.hasan,
          ),
          Hadith(
            number: 9,
            arabic:
                'إِذَا سَجَدَ أَحَدُكُمْ فَلَا يَبْرُكْ كَمَا يَبْرُكُ الْبَعِيرُ، وَلْيَضَعْ يَدَيْهِ قَبْلَ رُكْبَتَيْهِ',
            translation:
                'When one of you prostrates, he should not kneel as a camel kneels. Let him place his hands before his knees.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 10,
            arabic:
                'مَنْ تَرَكَ صَلَاةَ الْعَصْرِ فَقَدْ حَبِطَ عَمَلُهُ',
            translation:
                'Whoever misses the Asr prayer, his deeds are rendered void.',
            narrator: 'Abdullah ibn Umar',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
      // Book 3: Book of Fasting
      HadithBook(
        bookNumber: 3,
        name: 'Book of Fasting',
        nameArabic: 'كتاب الصيام',
        hadiths: [
          Hadith(
            number: 11,
            arabic:
                'مَنْ صَامَ رَمَضَانَ إِيمَانًا وَاحْتِسَابًا غُفِرَ لَهُ مَا تَقَدَّمَ مِنْ ذَنْبِهِ',
            translation:
                'Whoever fasts Ramadan out of faith and seeking reward, his previous sins will be forgiven.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 12,
            arabic:
                'إِذَا جَاءَ رَمَضَانُ فُتِّحَتْ أَبْوَابُ الْجَنَّةِ وَغُلِّقَتْ أَبْوَابُ النَّارِ وَصُفِّدَتِ الشَّيَاطِينُ',
            translation:
                'When Ramadan comes, the gates of Paradise are opened, the gates of Hellfire are closed, and the devils are chained.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 13,
            arabic:
                'مَنْ لَمْ يَدَعْ قَوْلَ الزُّورِ وَالْعَمَلَ بِهِ فَلَيْسَ لِلَّهِ حَاجَةٌ فِي أَنْ يَدَعَ طَعَامَهُ وَشَرَابَهُ',
            translation:
                'Whoever does not give up false speech and acting upon it, Allah has no need for him to give up his food and drink.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 14,
            arabic:
                'تَسَحَّرُوا فَإِنَّ فِي السُّحُورِ بَرَكَةً',
            translation:
                'Eat the pre-dawn meal (suhoor), for indeed there is blessing in it.',
            narrator: 'Anas ibn Malik',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 15,
            arabic:
                'لَا يَزَالُ النَّاسُ بِخَيْرٍ مَا عَجَّلُوا الْفِطْرَ',
            translation:
                'The people will remain in a good state as long as they hasten to break the fast.',
            narrator: 'Sahl ibn Sa\'d',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
    ],
  ),

  // ============================================================
  // 4. Jami' at-Tirmidhi
  // ============================================================
  HadithCollection(
    id: 'tirmidhi',
    name: "Jami' at-Tirmidhi",
    nameArabic: 'جامع الترمذي',
    author: 'Imam at-Tirmidhi',
    hadithCount: 3956,
    books: [
      // Book 1: Book of Purification
      HadithBook(
        bookNumber: 1,
        name: 'Book of Purification',
        nameArabic: 'كتاب الطهارة',
        hadiths: [
          Hadith(
            number: 1,
            arabic:
                'لَا تُقْبَلُ صَلَاةٌ بِغَيْرِ طُهُورٍ وَلَا صَدَقَةٌ مِنْ غُلُولٍ',
            translation:
                'No prayer is accepted without purification, and no charity is accepted from stolen wealth.',
            narrator: 'Abdullah ibn Umar',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 2,
            arabic:
                'إِسْبَاغُ الْوُضُوءِ عَلَى الْمَكَارِهِ، وَكَثْرَةُ الْخُطَا إِلَى الْمَسَاجِدِ، وَانْتِظَارُ الصَّلَاةِ بَعْدَ الصَّلَاةِ، فَذَلِكُمُ الرِّبَاطُ',
            translation:
                'Performing ablution thoroughly despite difficulties, frequent steps to the mosques, and waiting for the next prayer after a prayer - that is the ribat (guarding the frontier for Allah).',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 3,
            arabic:
                'مَنْ تَوَضَّأَ فَأَحْسَنَ الْوُضُوءَ خَرَجَتْ خَطَايَاهُ مِنْ جَسَدِهِ حَتَّى تَخْرُجَ مِنْ تَحْتِ أَظْفَارِهِ',
            translation:
                'Whoever performs ablution and does it well, his sins depart from his body, until they leave from beneath his fingernails.',
            narrator: 'Uthman ibn Affan',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 4,
            arabic:
                'مَا مِنِ امْرِئٍ مُسْلِمٍ تَحْضُرُهُ صَلَاةٌ مَكْتُوبَةٌ فَيُحْسِنُ وُضُوءَهَا وَخُشُوعَهَا وَرُكُوعَهَا إِلَّا كَانَتْ كَفَّارَةً لِمَا قَبْلَهَا مِنَ الذُّنُوبِ مَا لَمْ يُؤْتِ كَبِيرَةً، وَذَلِكَ الدَّهْرَ كُلَّهُ',
            translation:
                'No Muslim performs an obligatory prayer, perfecting its ablution, humility, and bowing, except that it is an expiation for the sins before it, as long as major sins are avoided, and this applies for all time.',
            narrator: 'Uthman ibn Affan',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 5,
            arabic:
                'الْوُضُوءُ شَطْرُ الْإِيمَانِ',
            translation:
                'Ablution is half of faith.',
            narrator: 'Abu Malik al-Ashari',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
      // Book 2: Book of Prayer
      HadithBook(
        bookNumber: 2,
        name: 'Book of Prayer',
        nameArabic: 'كتاب الصلاة',
        hadiths: [
          Hadith(
            number: 6,
            arabic:
                'إِنَّ بَيْنَ الرَّجُلِ وَبَيْنَ الشِّرْكِ وَالْكُفْرِ تَرْكَ الصَّلَاةِ',
            translation:
                'Between a man and polytheism and disbelief is the abandonment of prayer.',
            narrator: 'Jabir ibn Abdullah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 7,
            arabic:
                'الْعَهْدُ الَّذِي بَيْنَنَا وَبَيْنَهُمُ الصَّلَاةُ فَمَنْ تَرَكَهَا فَقَدْ كَفَرَ',
            translation:
                'The covenant that distinguishes between us and them is the prayer; whoever abandons it has committed disbelief.',
            narrator: 'Buraydah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 8,
            arabic:
                'أَقْرَبُ مَا يَكُونُ الْعَبْدُ مِنْ رَبِّهِ وَهُوَ سَاجِدٌ فَأَكْثِرُوا الدُّعَاءَ',
            translation:
                'The closest a servant is to his Lord is when he is in prostration, so increase your supplication.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 9,
            arabic:
                'مَنْ حَافَظَ عَلَى أَرْبَعِ رَكَعَاتٍ قَبْلَ الظُّهْرِ وَأَرْبَعٍ بَعْدَهَا حَرَّمَهُ اللَّهُ عَلَى النَّارِ',
            translation:
                'Whoever consistently prays four rak\'ahs before Dhuhr and four after it, Allah will forbid him from the Fire.',
            narrator: 'Umm Habibah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 10,
            arabic:
                'صَلَاةٌ فِي مَسْجِدِي هَذَا أَفْضَلُ مِنْ أَلْفِ صَلَاةٍ فِيمَا سِوَاهُ إِلَّا الْمَسْجِدَ الْحَرَامَ',
            translation:
                'A prayer in this mosque of mine is better than a thousand prayers in any other mosque, except al-Masjid al-Haram.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
      // Book 3: Book of Supplication
      HadithBook(
        bookNumber: 3,
        name: 'Book of Supplication',
        nameArabic: 'كتاب الدعوات',
        hadiths: [
          Hadith(
            number: 11,
            arabic:
                'الدُّعَاءُ هُوَ الْعِبَادَةُ',
            translation:
                'Supplication (du\'a) is the essence of worship.',
            narrator: 'Nu\'man ibn Bashir',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 12,
            arabic:
                'مَا عَلَى الْأَرْضِ مُسْلِمٌ يَدْعُو اللَّهَ بِدَعْوَةٍ إِلَّا آتَاهُ اللَّهُ إِيَّاهَا أَوْ صَرَفَ عَنْهُ مِنَ السُّوءِ مِثْلَهَا مَا لَمْ يَدْعُ بِإِثْمٍ أَوْ قَطِيعَةِ رَحِمٍ',
            translation:
                'There is no Muslim on earth who calls upon Allah with a supplication except that Allah grants it to him, or diverts an equivalent evil from him, as long as he does not ask for sin or the severing of family ties.',
            narrator: 'Abu Said al-Khudri',
            grade: HadithGrade.hasan,
          ),
          Hadith(
            number: 13,
            arabic:
                'سَيِّدُ الِاسْتِغْفَارِ أَنْ تَقُولَ: اللَّهُمَّ أَنْتَ رَبِّي لَا إِلَهَ إِلَّا أَنْتَ، خَلَقْتَنِي وَأَنَا عَبْدُكَ، وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ، أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ، أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ وَأَبُوءُ بِذَنْبِي فَاغْفِرْ لِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ',
            translation:
                'The master of seeking forgiveness is to say: O Allah, You are my Lord, there is no god but You. You created me and I am Your servant. I am upon Your covenant and promise as much as I can. I seek refuge in You from the evil of what I have done. I acknowledge Your blessings upon me and I acknowledge my sin, so forgive me, for none forgives sins but You.',
            narrator: 'Shaddad ibn Aws',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 14,
            arabic:
                'إِنَّ اللَّهَ حَيِيٌّ كَرِيمٌ يَسْتَحْيِي إِذَا رَفَعَ الرَّجُلُ إِلَيْهِ يَدَيْهِ أَنْ يَرُدَّهُمَا صِفْرًا خَائِبَتَيْنِ',
            translation:
                'Indeed Allah is Shy and Generous. He is shy when His servant raises his hands to Him to turn them away empty and disappointed.',
            narrator: 'Salman al-Farisi',
            grade: HadithGrade.hasan,
          ),
          Hadith(
            number: 15,
            arabic:
                'دَعْوَةُ الْمَظْلُومِ لَيْسَ بَيْنَهَا وَبَيْنَ اللَّهِ حِجَابٌ',
            translation:
                'The supplication of the oppressed person - there is no barrier between it and Allah.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
    ],
  ),

  // ============================================================
  // 5. Sunan an-Nasa'i
  // ============================================================
  HadithCollection(
    id: 'nasai',
    name: "Sunan an-Nasa'i",
    nameArabic: 'سنن النسائي',
    author: "Imam an-Nasa'i",
    hadithCount: 5758,
    books: [
      // Book 1: Book of Purification
      HadithBook(
        bookNumber: 1,
        name: 'Book of Purification',
        nameArabic: 'كتاب الطهارة',
        hadiths: [
          Hadith(
            number: 1,
            arabic:
                'جُعِلَتْ لِيَ الْأَرْضُ مَسْجِدًا وَطَهُورًا',
            translation:
                'The earth has been made for me a place of prostration and a means of purification.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 2,
            arabic:
                'إِنَّ الْمُؤْمِنَ لَا يَنْجُسُ',
            translation:
                'Indeed, the believer does not become impure.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 3,
            arabic:
                'إِذَا وَلَغَ الْكَلْبُ فِي إِنَاءِ أَحَدِكُمْ فَلْيُرِقْهُ ثُمَّ لْيَغْسِلْهُ سَبْعَ مَرَّاتٍ',
            translation:
                'If a dog licks the vessel of one of you, let him pour it out and then wash it seven times.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 4,
            arabic:
                'الْفِطْرَةُ خَمْسٌ: الْخِتَانُ وَالِاسْتِحْدَادُ وَقَصُّ الشَّارِبِ وَتَقْلِيمُ الْأَظْفَارِ وَنَتْفُ الْإِبِطِ',
            translation:
                'Five are from the fitrah (natural disposition): circumcision, shaving the pubic hair, trimming the mustache, clipping the nails, and plucking the armpit hair.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 5,
            arabic:
                'مَنْ تَوَضَّأَ فَأَحْسَنَ الْوُضُوءَ ثُمَّ صَلَّى رَكْعَتَيْنِ لَا يَسْهُو فِيهِمَا غُفِرَ لَهُ مَا تَقَدَّمَ مِنْ ذَنْبِهِ',
            translation:
                'Whoever performs ablution well and then prays two rak\'ahs without being distracted, his previous sins will be forgiven.',
            narrator: 'Uthman ibn Affan',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
      // Book 2: Book of Prayer
      HadithBook(
        bookNumber: 2,
        name: 'Book of Prayer',
        nameArabic: 'كتاب الصلاة',
        hadiths: [
          Hadith(
            number: 6,
            arabic:
                'إِنَّ أَوَّلَ مَا افْتَرَضَ اللَّهُ عَلَى النَّاسِ مِنْ دِينِهِمُ الصَّلَاةُ وَآخِرَ مَا يَبْقَى الصَّلَاةُ',
            translation:
                'The first thing that Allah obligated upon the people of their religion is prayer, and the last thing that remains is prayer.',
            narrator: 'Abdullah ibn Umar',
            grade: HadithGrade.hasan,
          ),
          Hadith(
            number: 7,
            arabic:
                'مَنْ صَلَّى ثِنْتَيْ عَشْرَةَ رَكْعَةً فِي يَوْمٍ وَلَيْلَةٍ بُنِيَ لَهُ بَيْتٌ فِي الْجَنَّةِ',
            translation:
                'Whoever prays twelve rak\'ahs in a day and night, a house will be built for him in Paradise.',
            narrator: 'Umm Habibah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 8,
            arabic:
                'صَلَاةُ اللَّيْلِ مَثْنَى مَثْنَى فَإِذَا خَشِيَ أَحَدُكُمُ الصُّبْحَ صَلَّى رَكْعَةً وَاحِدَةً تُوتِرُ لَهُ مَا قَدْ صَلَّى',
            translation:
                'Night prayer is offered in pairs of two. If one of you fears the dawn, let him pray one rak\'ah to make odd what he has already prayed.',
            narrator: 'Abdullah ibn Umar',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 9,
            arabic:
                'أَفْضَلُ الصَّلَاةِ بَعْدَ الْفَرِيضَةِ صَلَاةُ اللَّيْلِ',
            translation:
                'The best prayer after the obligatory prayer is the night prayer.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 10,
            arabic:
                'أَعِنِّي عَلَى نَفْسِكَ بِكَثْرَةِ السُّجُودِ',
            translation:
                'Help me to help you (attain Paradise) by prostrating frequently.',
            narrator: "Rabi'ah ibn Ka'b",
            grade: HadithGrade.sahih,
          ),
        ],
      ),
      // Book 3: Book of Fasting
      HadithBook(
        bookNumber: 3,
        name: 'Book of Fasting',
        nameArabic: 'كتاب الصيام',
        hadiths: [
          Hadith(
            number: 11,
            arabic:
                'كُلُّ عَمَلِ ابْنِ آدَمَ لَهُ إِلَّا الصِّيَامَ فَإِنَّهُ لِي وَأَنَا أَجْزِي بِهِ',
            translation:
                'Every deed of the son of Adam is for him, except fasting; it is for Me and I shall reward it.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 12,
            arabic:
                'الصِّيَامُ جُنَّةٌ فَلَا يَرْفُثْ وَلَا يَجْهَلْ وَإِنِ امْرُؤٌ قَاتَلَهُ أَوْ شَاتَمَهُ فَلْيَقُلْ إِنِّي صَائِمٌ مَرَّتَيْنِ',
            translation:
                'Fasting is a shield. So the fasting person should not engage in obscene speech or act ignorantly. If someone fights or insults him, let him say: I am fasting, twice.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 13,
            arabic:
                'لِلصَّائِمِ فَرْحَتَانِ يَفْرَحُهُمَا: إِذَا أَفْطَرَ فَرِحَ، وَإِذَا لَقِيَ رَبَّهُ فَرِحَ بِصَوْمِهِ',
            translation:
                'The fasting person has two moments of joy: when he breaks his fast he is happy, and when he meets his Lord he is happy because of his fasting.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 14,
            arabic:
                'مَنْ صَامَ يَوْمًا فِي سَبِيلِ اللَّهِ بَعَّدَ اللَّهُ وَجْهَهُ عَنِ النَّارِ سَبْعِينَ خَرِيفًا',
            translation:
                'Whoever fasts a day in the cause of Allah, Allah will distance his face from the Fire by seventy years.',
            narrator: 'Abu Said al-Khudri',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 15,
            arabic:
                'أَفْضَلُ الصِّيَامِ بَعْدَ رَمَضَانَ شَهْرُ اللَّهِ الْمُحَرَّمُ، وَأَفْضَلُ الصَّلَاةِ بَعْدَ الْفَرِيضَةِ صَلَاةُ اللَّيْلِ',
            translation:
                'The best fasting after Ramadan is in the month of Allah, Muharram. And the best prayer after the obligatory prayer is the night prayer.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
    ],
  ),

  // ============================================================
  // 6. Sunan Ibn Majah
  // ============================================================
  HadithCollection(
    id: 'ibn_majah',
    name: 'Sunan Ibn Majah',
    nameArabic: 'سنن ابن ماجه',
    author: 'Ibn Majah',
    hadithCount: 4341,
    books: [
      // Book 1: Book of Purification
      HadithBook(
        bookNumber: 1,
        name: 'Book of Purification',
        nameArabic: 'كتاب الطهارة',
        hadiths: [
          Hadith(
            number: 1,
            arabic:
                'طَلَبُ الْعِلْمِ فَرِيضَةٌ عَلَى كُلِّ مُسْلِمٍ',
            translation:
                'Seeking knowledge is an obligation upon every Muslim.',
            narrator: 'Anas ibn Malik',
            grade: HadithGrade.hasan,
          ),
          Hadith(
            number: 2,
            arabic:
                'اسْتَقِيمُوا وَلَنْ تُحْصُوا وَاعْلَمُوا أَنَّ خَيْرَ أَعْمَالِكُمُ الصَّلَاةُ وَلَا يُحَافِظُ عَلَى الْوُضُوءِ إِلَّا مُؤْمِنٌ',
            translation:
                'Be steadfast, though you will not be able to do everything. And know that the best of your deeds is prayer, and only a believer maintains his ablution.',
            narrator: 'Thawban',
            grade: HadithGrade.hasan,
          ),
          Hadith(
            number: 3,
            arabic:
                'التَّيَمُّمُ ضَرْبَتَانِ: ضَرْبَةٌ لِلْوَجْهِ وَضَرْبَةٌ لِلْيَدَيْنِ إِلَى الْمِرْفَقَيْنِ',
            translation:
                'Tayammum (dry ablution) consists of two strikes: one for the face and one for the hands up to the elbows.',
            narrator: 'Abdullah ibn Umar',
            grade: HadithGrade.hasan,
          ),
          Hadith(
            number: 4,
            arabic:
                'إِنَّ اللَّهَ طَيِّبٌ لَا يَقْبَلُ إِلَّا طَيِّبًا',
            translation:
                'Indeed Allah is pure and does not accept except what is pure.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 5,
            arabic:
                'النَّظَافَةُ مِنَ الْإِيمَانِ',
            translation:
                'Cleanliness is part of faith.',
            narrator: 'Abu Malik al-Ashari',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
      // Book 2: Book of Prayer
      HadithBook(
        bookNumber: 2,
        name: 'Book of Prayer',
        nameArabic: 'كتاب الصلاة',
        hadiths: [
          Hadith(
            number: 6,
            arabic:
                'إِذَا أُقِيمَتِ الصَّلَاةُ فَلَا صَلَاةَ إِلَّا الْمَكْتُوبَةُ',
            translation:
                'When the iqamah is called for prayer, there is no prayer except the obligatory one.',
            narrator: 'Abu Hurairah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 7,
            arabic:
                'اجْعَلُوا فِي بُيُوتِكُمْ مِنْ صَلَاتِكُمْ وَلَا تَتَّخِذُوهَا قُبُورًا',
            translation:
                'Offer some of your prayers in your homes and do not turn them into graves.',
            narrator: 'Abdullah ibn Umar',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 8,
            arabic:
                'رَكْعَتَا الْفَجْرِ خَيْرٌ مِنَ الدُّنْيَا وَمَا فِيهَا',
            translation:
                'The two rak\'ahs of Fajr (sunnah) are better than the world and everything in it.',
            narrator: 'Aisha',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 9,
            arabic:
                'أَحَبُّ الصَّلَاةِ إِلَى اللَّهِ صَلَاةُ دَاوُدَ عَلَيْهِ السَّلَامُ، كَانَ يَنَامُ نِصْفَ اللَّيْلِ وَيَقُومُ ثُلُثَهُ وَيَنَامُ سُدُسَهُ',
            translation:
                'The most beloved prayer to Allah is the prayer of Dawud (peace be upon him). He used to sleep half the night, pray for a third of it, and sleep for a sixth of it.',
            narrator: 'Abdullah ibn Amr',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 10,
            arabic:
                'إِذَا صَلَّى أَحَدُكُمْ فَلْيُصَلِّ إِلَى سُتْرَةٍ وَلْيَدْنُ مِنْهَا',
            translation:
                'When one of you prays, let him pray toward a sutrah (barrier) and draw close to it.',
            narrator: 'Abu Said al-Khudri',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
      // Book 3: Book of Food
      HadithBook(
        bookNumber: 3,
        name: 'Book of Food',
        nameArabic: 'كتاب الأطعمة',
        hadiths: [
          Hadith(
            number: 11,
            arabic:
                'مَا مَلَأَ آدَمِيٌّ وِعَاءً شَرًّا مِنْ بَطْنٍ، بِحَسْبِ ابْنِ آدَمَ أُكُلَاتٌ يُقِمْنَ صُلْبَهُ، فَإِنْ كَانَ لَا مَحَالَةَ فَثُلُثٌ لِطَعَامِهِ وَثُلُثٌ لِشَرَابِهِ وَثُلُثٌ لِنَفَسِهِ',
            translation:
                'No human fills a vessel worse than his stomach. It is sufficient for the son of Adam to eat a few morsels to keep his spine straight. But if he must, then one-third for his food, one-third for his drink, and one-third for his breath.',
            narrator: 'Al-Miqdam ibn Ma\'dikarib',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 12,
            arabic:
                'طَعَامُ الْوَاحِدِ يَكْفِي الِاثْنَيْنِ، وَطَعَامُ الِاثْنَيْنِ يَكْفِي الْأَرْبَعَةَ، وَطَعَامُ الْأَرْبَعَةِ يَكْفِي الثَّمَانِيَةَ',
            translation:
                'The food of one person suffices for two, the food of two suffices for four, and the food of four suffices for eight.',
            narrator: 'Jabir ibn Abdullah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 13,
            arabic:
                'إِذَا أَكَلَ أَحَدُكُمْ فَلْيَأْكُلْ بِيَمِينِهِ وَإِذَا شَرِبَ فَلْيَشْرَبْ بِيَمِينِهِ فَإِنَّ الشَّيْطَانَ يَأْكُلُ بِشِمَالِهِ وَيَشْرَبُ بِشِمَالِهِ',
            translation:
                'When one of you eats, let him eat with his right hand, and when he drinks, let him drink with his right hand, for the devil eats with his left hand and drinks with his left hand.',
            narrator: 'Abdullah ibn Umar',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 14,
            arabic:
                'سَمِّ اللَّهَ وَكُلْ بِيَمِينِكَ وَكُلْ مِمَّا يَلِيكَ',
            translation:
                'Say the name of Allah, eat with your right hand, and eat from what is nearest to you.',
            narrator: 'Umar ibn Abi Salamah',
            grade: HadithGrade.sahih,
          ),
          Hadith(
            number: 15,
            arabic:
                'الْبَرَكَةُ تَنْزِلُ وَسَطَ الطَّعَامِ فَكُلُوا مِنْ حَافَّتَيْهِ وَلَا تَأْكُلُوا مِنْ وَسَطِهِ',
            translation:
                'Blessing descends in the middle of the food, so eat from its edges and do not eat from its middle.',
            narrator: 'Abdullah ibn Abbas',
            grade: HadithGrade.sahih,
          ),
        ],
      ),
    ],
  ),
];
