import 'dart:math';
import 'tarot_card.dart';
import 'question_type.dart';

class TarotDeck {
  static List<TarotCard> getAllCards() {
    return [
      TarotCard(
        name: 'The Fool',
        image: 'assets/images/tarot/thefool.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'New beginnings, innocence, spontaneity, free spirit, leap of faith, trust in the universe, unlimited potential.',
            'definition':
                'The Fool represents the start of a journey, a step into the unknown with open arms and a carefree heart. It signifies a time of embracing new experiences, taking risks, and trusting your intuition. The Fool is a reminder to live in the moment and enjoy the adventure, even without knowing the destination.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'New romance, excitement, taking a chance, open heart, innocence, playfulness.',
            'definition':
                'The Fool can indicate the beginning of a new relationship, one that is full of passion and excitement. It can also suggest a need for more spontaneity and fun in an existing relationship. The Fool encourages you to be open to love and to take a chance on someone new, or to approach your current relationship with a renewed sense of childlike wonder.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'New job, career change, entrepreneurial spirit, taking risks, following your passion.',
            'definition':
                'The Fool can signify a new career path, a fresh start, or the courage to pursue your dreams. It suggests that it\'s time to take a leap of faith and trust your instincts, even if it means leaving your comfort zone. The Fool encourages you to be open to new opportunities and to follow your passion, wherever it may lead.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Spiritual awakening, new beliefs, trusting your intuition, inner guidance, freedom.',
            'definition':
                'Spiritually, The Fool represents a journey of self-discovery and a willingness to embrace the unknown. It encourages you to trust your inner voice and to follow your spiritual path, even if it diverges from traditional beliefs. The Fool signifies a time of spiritual exploration and growth, a leap of faith into the vastness of your own soul.',
          },
        },
      ),
      TarotCard(
        name: 'The Magician',
        image: 'assets/images/themagician.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Manifestation, resourcefulness, power, inspired action, will, skill, focus.',
            'definition':
                'The Magician embodies the power to transform your desires into reality. He is a master manifestor, skillfully utilizing all the resources at his disposal. This card signifies willpower, focused intention, and taking concrete steps towards your goals. It\'s a reminder that you possess the tools and abilities to create the life you envision.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Action, initiative, creation, attraction, communication, building a foundation.',
            'definition':
                'The Magician encourages you to be proactive. If you desire a relationship, take the initiative. Express your feelings, make the first move, and actively build a connection. For existing relationships, The Magician suggests using your skills and communication to strengthen your bond and create a foundation for lasting love.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Skill, talent, resourcefulness, action, ambition, innovation.',
            'definition':
                'The Magician appearing in a career reading highlights your talents and potential. It encourages you to apply your skills, utilize your resources effectively, and take action to achieve your professional goals. This could be the time to start a new project, pursue a promotion, or embrace innovative ideas.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Personal power, co-creation, divine connection, aligning with your higher self.',
            'definition':
                'Spiritually, The Magician represents your ability to co-create your reality with the Universe. It encourages you to connect with your inner power, trust your intuition, and align your actions with your higher purpose. The Magician reminds you that you are a powerful being capable of manifesting your spiritual desires.',
          },
        },
      ),
      TarotCard(
        name: 'The High Priestess',
        image: 'assets/images/tarot/thehighpriestess.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Intuition, unconscious knowledge, mystery, inner voice, wisdom, spiritual insight.',
            'definition':
                'The High Priestess symbolizes the gateway to the unconscious and the realm of intuition. This card represents a deep connection to your inner self and the mysteries of life. It encourages you to trust your intuition and to seek knowledge beyond the surface. The High Priestess signifies a time of introspection, contemplation, and a need to listen to your inner voice as you navigate your journey. She is a reminder that not all truths are meant to be known; some must be felt and experienced.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Intuition in relationships, emotional depth, mystery, spiritual connection, inner wisdom.',
            'definition':
                'In a love reading, The High Priestess indicates a need to trust your intuition regarding your romantic life. This card suggests a deep emotional bond that goes beyond the physical, emphasizing spiritual connection and understanding. It may also signify the presence of secrets or hidden feelings within a relationship, encouraging you to explore the deeper aspects of your connection. The High Priestess reminds you to be patient and to listen to your heart and instincts when it comes to love.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Intuition in decision-making, research, knowledge, wisdom, hidden opportunities.',
            'definition':
                'The High Priestess in a career context suggests that you should rely on your intuition and inner wisdom when making decisions. It may indicate the need for research or deeper understanding of a situation before taking action. This card encourages you to trust your instincts when pursuing career opportunities and to remain open to hidden potentials that may not be immediately apparent. The High Priestess signifies a time for reflection and contemplation in your professional life.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Spiritual awakening, intuition, inner knowledge, mystery, connection to the divine.',
            'definition':
                'Spiritually, The High Priestess represents a deepening of your spiritual practice and a strong connection to your intuition. This card encourages you to explore the mysteries of the universe and to seek knowledge that transcends the physical realm. The High Priestess signifies a time of spiritual growth and awakening, inviting you to embrace the unknown and to trust the guidance of your inner self. It may also indicate a need to develop your psychic abilities or to explore the deeper aspects of spirituality.',
          },
        },
      ),
      TarotCard(
        name: 'The Empress',
        image: 'assets/images/tarot/theempress.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Abundance, fertility, creativity, nurturing, beauty, nature, femininity, growth.',
            'definition':
                'The Empress embodies the energy of creation, abundance, and nurturing. She represents fertility, both literal and metaphorical, indicating a time of growth, creativity, and nurturing of ideas, relationships, or projects. The Empress is closely connected to nature and the physical world, reminding you to embrace pleasure, comfort, and the beauty of life. This card encourages you to nurture yourself and others, offering compassion and care to allow things to flourish.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Nurturing relationships, romance, affection, deep connection, emotional fulfillment.',
            'definition':
                'The Empress signifies a loving, nurturing, and emotionally fulfilling relationship. She represents romance, affection, and a deep connection that can grow and thrive with care. The Empress encourages you to cultivate love by being compassionate, understanding, and open-hearted. In existing relationships, she suggests a period of deep emotional growth, while for singles, she indicates that love may be blooming soon.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Creativity, nurturing projects, growth, abundance, success, nurturing leadership.',
            'definition':
                'The Empress represents growth, creativity, and abundance. She suggests that your projects or work environment are thriving and that you should nurture your creative ideas and collaborations. The Empress indicates a time of success and prosperity, especially when you approach your work with care, patience, and compassion. This card encourages a nurturing leadership style and reminds you that fostering positive relationships will lead to lasting success.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Connection to nature, spiritual abundance, feminine energy, inner growth, nurturing the soul.',
            'definition':
                'Spiritually, The Empress encourages you to connect with the earth and embrace the nurturing aspects of your soul. She signifies spiritual abundance and growth, inviting you to explore the divine feminine energy within yourself, regardless of gender. The Empress represents the importance of nurturing your spiritual well-being, taking time for self-care, and fostering compassion for yourself and others. She reminds you to enjoy the beauty and richness of life as part of your spiritual practice.',
          },
        },
      ),
      TarotCard(
        name: 'The Emperor',
        image: 'assets/images/tarot/theemperor.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Authority, structure, stability, leadership, control, discipline, protection, order.',
            'definition':
                'The Emperor symbolizes authority, structure, and the power of leadership. He represents stability, order, and the need for strong foundations in life. The Emperor encourages you to take control of your situation with logic and discipline. His energy is one of leadership and assertiveness, guiding you to establish clear rules and boundaries to ensure long-term success. This card reminds you of the importance of stability and structure in achieving your goals.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Stability, protection, commitment, strong foundations, traditional roles.',
            'definition':
                'In a love reading, The Emperor represents a stable, committed relationship, often one where traditional roles or strong foundations are emphasized. He signifies protection and security, suggesting that a partnership built on mutual respect and trust is either present or desired. The Emperor encourages you to create a strong, balanced relationship where both partners feel secure and valued. For singles, it may indicate a potential partner who is mature, dependable, and takes on a leadership role in the relationship.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Leadership, authority, management, structure, discipline, strategic planning.',
            'definition':
                'The Emperor in a career context symbolizes a time of leadership and authority. It suggests that you may be stepping into a position of power or that you need to take control of your professional path with a clear, strategic plan. The Emperor encourages discipline, organization, and a methodical approach to your career. He signifies the importance of setting long-term goals and building a stable foundation for future success. This card may also indicate the presence of a mentor or authority figure in your work life.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Discipline, spiritual authority, inner structure, balance of power, guidance.',
            'definition':
                'Spiritually, The Emperor represents the need for discipline and structure in your spiritual practice. He encourages you to create order and balance in your spiritual journey, possibly by establishing routines or boundaries that foster growth. The Emperor may also signify guidance from a spiritual leader or mentor who can help you navigate your path. This card reminds you that while inner power and authority are essential, they must be balanced with compassion and wisdom.',
          },
        },
      ),
      TarotCard(
        name: 'The Hierophant',
        image: 'assets/images/tarot/thehierophant.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Tradition, spirituality, conformity, institutions, teachings, mentorship, spiritual wisdom.',
            'definition':
                'The Hierophant represents tradition, structure, and spiritual teachings. He is the card of institutions, religious beliefs, and conventional wisdom. This card suggests that you are seeking guidance, learning, or wisdom from established systems or mentors. It encourages you to follow traditional paths, honor cultural or spiritual customs, and to align with structured belief systems. The Hierophant reminds you of the value of learning from those who have walked the path before you and to trust the wisdom of collective experience.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Commitment, traditional relationships, shared values, long-term partnership, spiritual connection.',
            'definition':
                'In a love reading, The Hierophant indicates a committed, traditional relationship. It suggests that shared values and spiritual or cultural beliefs play a significant role in your connection. This card can also point to a relationship that is guided by social norms or conventional expectations, such as marriage. The Hierophant encourages you to seek alignment in your relationships based on mutual respect and understanding, fostering a deep, lasting bond.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Institutional roles, traditional career paths, mentorship, structured environment, following rules.',
            'definition':
                'In a career context, The Hierophant signifies working within established institutions or traditional fields. It suggests that you may benefit from adhering to standard procedures, guidelines, or corporate hierarchies. The card encourages learning from experienced mentors or furthering your education through formal channels. The Hierophant advises sticking to the rules, working within a structured environment, and finding success through discipline and consistency.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Spiritual teachings, traditional beliefs, religious practices, guidance from mentors, deeper understanding.',
            'definition':
                'Spiritually, The Hierophant represents formal spiritual teachings, religious practices, or guidance from a spiritual leader. This card suggests that now is a time to seek wisdom from traditional paths or institutions, to explore established religious or spiritual systems, or to find a mentor to guide you. The Hierophant encourages you to deepen your understanding of your beliefs by studying ancient traditions and aligning with collective spiritual wisdom.',
          },
        },
      ),
      TarotCard(
        name: 'The Lovers',
        image: 'assets/images/tarot/thelovers.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Love, harmony, relationships, choices, alignment, union, values, duality.',
            'definition':
                'The Lovers represent deep emotional connections, harmony, and the unity of opposites. This card signifies a powerful bond between two people or a major decision that requires alignment with your true values. It is about love in its many forms—romantic, familial, or self-love—and making choices that honor who you are. The Lovers encourage balance and alignment between your inner and outer worlds, reminding you that love and relationships are mirrors of self-awareness and growth.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Romantic relationships, deep connection, harmony, choices in love, soulmates.',
            'definition':
                'In a love reading, The Lovers indicate a powerful connection between two people, often symbolizing romance, passion, and unity. It suggests a relationship based on mutual respect, trust, and deep emotional ties. The Lovers may also indicate a choice between two potential partners or paths in a relationship. The card encourages you to make decisions that honor your heart and values, focusing on love that aligns with your authentic self.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Partnerships, collaboration, major decisions, alignment with values, harmony at work.',
            'definition':
                'In a career context, The Lovers suggest harmonious partnerships or collaborations. It indicates that you may be entering into a fruitful business relationship or finding alignment with your professional goals and values. The card can also point to important choices in your career path that require you to align with what you truly believe in. The Lovers encourage balance and cooperation at work, ensuring that both parties benefit equally from shared efforts.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Inner balance, self-love, alignment with higher self, unity, choices in spiritual growth.',
            'definition':
                'Spiritually, The Lovers represent the union of the conscious and subconscious, symbolizing inner balance and alignment with your higher self. The card encourages you to embrace love in all its forms, including self-love, and to seek harmony within. The Lovers also highlight the importance of making choices that align with your spiritual path and values. It’s a reminder that true spiritual growth often involves understanding and embracing duality, finding balance between your inner and outer worlds.',
          },
        },
      ),
      TarotCard(
        name: 'The Chariot',
        image: 'assets/images/tarot/thechariot.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Determination, willpower, control, success, action, ambition, overcoming obstacles, victory.',
            'definition':
                'The Chariot represents determination, strength, and forward momentum. It signifies a journey or pursuit where focus, discipline, and willpower are necessary to achieve success. The Chariot encourages you to take control of your situation, maintain your focus, and steer your path with confidence and ambition. This card symbolizes victory through perseverance, as well as the ability to overcome obstacles by harnessing both inner strength and external forces.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Moving forward, commitment, challenges in relationships, maintaining control.',
            'definition':
                'In a love reading, The Chariot indicates movement and progress in a relationship. It suggests that challenges may arise, but through determination and clear communication, you can overcome them. This card encourages you to take control of the direction of your relationship and work together to achieve a common goal. If you\'re single, The Chariot may represent the need to take action and be confident in pursuing love.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Success through determination, ambition, overcoming obstacles, leadership, career advancement.',
            'definition':
                'In a career context, The Chariot signifies ambition and success through hard work and focus. It suggests that you are on the path to achieving your professional goals, but it requires discipline, determination, and the ability to overcome challenges. The Chariot encourages you to take control of your career and use your willpower to drive forward, making progress toward success and advancement.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Spiritual determination, overcoming internal struggles, focus, spiritual journey, self-control.',
            'definition':
                'Spiritually, The Chariot represents a strong will and determination to progress on your spiritual path. It suggests that you may face internal or external challenges, but with discipline and focus, you will overcome them. The Chariot encourages self-control and the ability to balance opposing forces within yourself. This card is a reminder that your spiritual journey requires both strength and perseverance, and that victory comes from within.',
          },
        },
      ),
      TarotCard(
        name: 'Strength',
        image: 'assets/images/tarot/strength.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Inner strength, courage, compassion, resilience, patience, self-confidence, control, endurance.',
            'definition':
                'The Strength card represents inner power, courage, and the ability to overcome challenges through compassion and patience rather than brute force. It signifies the strength of character, emotional resilience, and the quiet confidence that comes from knowing your true self. Strength encourages you to approach life’s challenges with kindness and grace, relying on your inner fortitude to guide you through adversity. It is a reminder that true strength lies in balance and calm, not in aggression or dominance.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Patience, emotional resilience, compassion in relationships, gentle approach, balance of power.',
            'definition':
                'In a love reading, Strength signifies a harmonious relationship built on mutual respect, patience, and emotional resilience. It suggests that challenges in a relationship can be overcome by approaching them with compassion and understanding rather than force or confrontation. This card encourages you to nurture your bond by being kind, gentle, and patient with your partner. If you’re single, Strength suggests that self-love and confidence will draw love into your life.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Resilience at work, overcoming challenges, patience, leadership through compassion, steady progress.',
            'definition':
                'In a career context, Strength signifies the need for patience, resilience, and inner fortitude in achieving your professional goals. It suggests that you may encounter obstacles or difficult situations, but by staying calm, composed, and compassionate, you can overcome them. Strength encourages leadership through understanding and empathy, reminding you that success comes through steady and thoughtful progress, not rushing or aggression.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Inner peace, self-mastery, emotional control, spiritual resilience, balance.',
            'definition':
                'Spiritually, Strength represents mastery over your emotions and the ability to maintain inner peace through challenges. It suggests a time of spiritual growth where you are learning to balance your inner forces and find calm in the face of adversity. Strength encourages you to rely on your inner wisdom and resilience to guide you on your spiritual journey. This card is a reminder that true power comes from within and that spiritual strength is found in compassion and self-awareness.',
          },
        },
      ),
      TarotCard(
        name: 'The Hermit',
        image: 'assets/images/tarot/thehermit.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Introspection, solitude, inner guidance, self-reflection, spiritual enlightenment, wisdom, soul-searching.',
            'definition':
                'The Hermit represents a period of introspection, self-reflection, and withdrawal from the external world to seek inner wisdom. This card suggests the need for solitude to find clarity, truth, or a deeper understanding of yourself. The Hermit encourages you to listen to your inner voice, embrace solitude, and take time to reflect on your life’s path. It symbolizes spiritual enlightenment and the pursuit of knowledge from within, guiding you toward self-discovery.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Reflection on relationships, time alone, personal growth, self-awareness in love.',
            'definition':
                'In a love reading, The Hermit can indicate a period of self-reflection regarding your relationships. If you are single, it suggests taking time to focus on personal growth and understanding your needs before pursuing love. In an existing relationship, The Hermit encourages both partners to step back and reflect on their connection, possibly spending time apart to gain clarity. It is a card of inner work, showing that love must first come from within before being shared with others.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Self-reflection, reassessment of goals, working independently, seeking deeper meaning in work.',
            'definition':
                'In a career context, The Hermit suggests that it may be time to step back and reassess your professional goals or direction. This card encourages independent work or introspection to find deeper meaning and purpose in your career. It may also signify a period of self-learning or retreat from a fast-paced environment to focus on personal growth or skill development. The Hermit reminds you to trust your inner wisdom and take time for reflection in your work life.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Spiritual retreat, inner wisdom, seeking enlightenment, solitude, meditation, guidance from within.',
            'definition':
                'Spiritually, The Hermit represents a quest for spiritual enlightenment through solitude and introspection. It suggests a time for turning inward, meditating, and seeking answers from within rather than from external sources. The Hermit encourages you to trust your inner guidance, embrace quiet and solitude, and focus on personal spiritual growth. This card is a call to detach from the noise of the outside world and listen to the wisdom of your own soul.',
          },
        },
      ),
      TarotCard(
        name: 'The Wheel of Fortune',
        image: 'assets/images/tarot/wheeloffortune.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Fate, destiny, cycles, change, luck, karma, turning points, life\'s ups and downs.',
            'definition':
                'The Wheel of Fortune represents the constant movement of life, the cyclical nature of events, and the role of fate and destiny. This card suggests that a significant change is on the horizon, one that could bring good fortune or a shift in circumstances. The Wheel of Fortune reminds you that life is full of ups and downs, and it\'s important to remain adaptable and open to change. It also speaks to karma and the idea that what you put into the world will eventually come back to you.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Changes in love, fate, destiny, turning points in relationships, new cycles.',
            'definition':
                'In a love reading, The Wheel of Fortune suggests that changes are coming in your romantic life. If you\'re single, this card could indicate a fated encounter or the beginning of a new relationship. If you’re in a relationship, it may signify a turning point, such as deepening your commitment or navigating challenges. The Wheel of Fortune reminds you that love, like life, goes through cycles, and it encourages you to embrace these changes as part of your romantic journey.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Career changes, new opportunities, luck, unexpected events, cycles of success and challenge.',
            'definition':
                'In a career context, The Wheel of Fortune signals a major shift or turning point in your professional life. This could be a new job opportunity, a promotion, or a significant change in your current role. It may also indicate that your luck is about to change, for better or worse, and that you need to be adaptable to what lies ahead. The Wheel of Fortune encourages you to seize opportunities when they arise and trust in the cyclical nature of success and challenges in your career.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                ' Karma, spiritual cycles, life\'s ebb and flow, divine timing, spiritual growth.',
            'definition':
                'Spiritually, The Wheel of Fortune represents the cycles of life and the role of fate in your spiritual journey. It encourages you to trust in the timing of the universe and understand that everything happens for a reason. This card suggests that you may be entering a new phase of spiritual growth or learning important karmic lessons. The Wheel of Fortune reminds you to embrace the flow of life and trust in the guidance of higher forces as you continue on your spiritual path.',
          },
        },
      ),
      TarotCard(
        name: 'Justice',
        image: 'assets/images/tarot/justice.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Fairness, truth, balance, law, accountability, cause and effect, integrity, justice served.',
            'definition':
                'The Justice card symbolizes fairness, truth, and the need for balance in all things. It represents the principle of karma, where actions have consequences, and the need to take responsibility for your choices. Justice encourages you to act with integrity, make decisions based on truth and fairness, and seek balance in your life. It can also point to legal matters or important decisions where honesty and fairness will prevail.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Balance in relationships, fairness, truth in love, making decisions, resolving disputes.',
            'definition':
                'In a love reading, Justice indicates the need for honesty and fairness in a relationship. It suggests that balance and equality are essential for a healthy partnership, and that both partners must take responsibility for their actions. If there have been conflicts, this card points to the resolution of disputes through open communication and fairness. Justice may also suggest a need to make an important relationship decision, such as defining the relationship or discussing long-term goals.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Fair treatment, accountability, legal matters, decisions, balance in work life, contracts.',
            'definition':
                'In a career context, Justice indicates that fairness and accountability are important in your professional life. It may point to legal matters, such as signing contracts or resolving disputes, where you need to be sure that everything is in order and fair. This card also encourages you to act with integrity in the workplace and to seek balance between your work and personal life. If you’ve been treated unfairly, Justice suggests that the truth will come to light and things will be set right.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Karmic lessons, spiritual truth, seeking balance, moral responsibility, fairness in life.',
            'definition':
                'Spiritually, Justice represents karmic balance and the understanding that every action has consequences. It suggests that you may be learning important karmic lessons or facing situations where you need to take responsibility for your past actions. Justice encourages you to live with moral integrity, seek the truth within yourself, and act in accordance with your highest principles. It also signifies the importance of balancing your spiritual and material life for overall harmony.',
          },
        },
      ),
      TarotCard(
        name: 'The Hanged Man',
        image: 'assets/images/tarot/thehangedman.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Surrender, letting go, new perspectives, pause, suspension, sacrifice, contemplation, patience.',
            'definition':
                'The Hanged Man represents a time of suspension, reflection, and gaining new perspectives. It signifies letting go of control and embracing the need for patience. Sometimes, to move forward, you must take a step back or view things from a different angle. The Hanged Man suggests that this pause is necessary for personal growth and deeper understanding. It\'s a card of surrendering to the present moment and trusting that clarity will come in due time.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Letting go, patience in relationships, seeing things differently, reevaluation of love, waiting.',
            'definition':
                'In a love reading, The Hanged Man suggests a period of waiting or contemplation in relationships. It may indicate that it\'s time to step back and gain a new perspective on your love life. Whether you\'re single or in a relationship, this card encourages you to reevaluate your approach to love and consider letting go of old patterns or expectations. The Hanged Man is a reminder that patience and surrender can lead to deeper emotional clarity and connection.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Pause in career, reevaluation, new perspective on work, waiting for results, patience with progress.',
            'definition':
                'In a career context, The Hanged Man points to a period of pause or uncertainty. It suggests that you may need to step back and reassess your current career path or goals. Progress may feel slow or stalled, but this time of reflection is necessary for gaining new insights or approaches. The Hanged Man encourages patience and reminds you that sometimes waiting or sacrificing short-term gains can lead to long-term success and fulfillment.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Spiritual surrender, new spiritual perspectives, letting go of ego, enlightenment, inner reflection.',
            'definition':
                'Spiritually, The Hanged Man represents surrender and the release of control in order to gain enlightenment. It suggests that you may be going through a period of inner reflection, allowing yourself to see things from a higher or different perspective. This card encourages letting go of rigid beliefs or attachments, trusting the universe to guide you. The Hanged Man signifies a spiritual awakening through patience, contemplation, and the willingness to see beyond the surface.',
          },
        },
      ),
      TarotCard(
        name: 'Death',
        image: 'assets/images/tarot/death.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Transformation, endings, new beginnings, transition, closure, rebirth, letting go.',
            'definition':
                'The Death card signifies profound transformation and change. It represents the end of a particular phase in your life, making way for new beginnings and opportunities. While it may seem daunting, this card is not about physical death but rather the end of outdated patterns, beliefs, or situations that no longer serve you. Embracing this transformation can lead to personal growth and renewal, encouraging you to let go and make space for what is to come.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Endings in relationships, transformation, letting go of past love, new beginnings in love, growth.',
            'definition':
                'In a love reading, Death suggests that an important transformation is taking place in your romantic life. This could mean the end of a relationship that is no longer fulfilling or the need to let go of past hurts and patterns to make room for a new love. While endings can be painful, they also open the door to new beginnings. The Death card encourages you to embrace this change and trust that it will lead you to healthier, more fulfilling connections.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Career change, transformation in work, letting go of old job roles, new opportunities, renewal.',
            'definition':
                'In a career context, Death signifies significant changes or transformations in your professional life. This could be the end of a job, a shift in career direction, or the need to let go of outdated work habits or environments. While this change may be challenging, it also presents new opportunities for growth and reinvention. The Death card encourages you to embrace these transitions as a way to discover a more fulfilling career path and pursue your passions.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                ' Spiritual transformation, letting go of old beliefs, rebirth, inner change, renewal.',
            'definition':
                'Spiritually, the Death card represents deep transformation and renewal on your spiritual journey. It encourages you to release old beliefs or patterns that no longer serve your growth. This card signifies that you may be entering a new phase of spiritual understanding and enlightenment. Embracing change and allowing yourself to evolve will lead to greater self-awareness and a more profound connection to your spiritual path.',
          },
        },
      ),
      TarotCard(
        name: 'Temperance',
        image: 'assets/images/tarot/temperance.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Balance, harmony, moderation, patience, purpose, self-control, alchemy, blending.',
            'definition':
                'Temperance represents the art of balance and harmony in life. It signifies the importance of moderation, patience, and finding the middle ground in various aspects of your life. This card encourages you to blend different elements and ideas, creating a sense of equilibrium. Temperance reminds you to practice self-control and to remain patient as you navigate through challenges. It represents the need for inner peace and the ability to adapt to changing circumstances with grace.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Harmony in relationships, patience, balance, blending differences, moderation in love.',
            'definition':
                'In a love reading, Temperance signifies a period of harmony and balance in your romantic life. It suggests that you and your partner are finding common ground and learning to blend your differences. This card encourages open communication, patience, and understanding, reminding you to approach love with moderation and care. If you’re single, Temperance may indicate that it’s important to maintain balance within yourself before entering a new relationship, ensuring that you are ready for a healthy partnership.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Work-life balance, collaboration, moderation in work, adaptability, purpose in career.',
            'definition':
                'In a career context, Temperance points to the need for balance and harmony in your professional life. It encourages you to find equilibrium between work and personal life, avoiding burnout. This card may also indicate the importance of collaboration and working well with others to achieve common goals. Temperance reminds you to be patient as you pursue your career aspirations, blending different skills and approaches to create a fulfilling and purposeful work life.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Spiritual balance, inner peace, moderation in beliefs, integration, self-discovery.',
            'definition':
                'Spiritually, Temperance represents the journey toward inner balance and harmony. It encourages you to blend different spiritual practices, beliefs, or philosophies, finding a personal path that resonates with you. This card signifies the importance of moderation in your spiritual pursuits and the need to cultivate patience as you grow and evolve. Temperance invites you to seek inner peace, fostering a sense of wholeness as you navigate your spiritual journey.',
          },
        },
      ),
      TarotCard(
        name: 'The Devil',
        image: 'assets/images/tarot/thedevil.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Temptation, addiction, materialism, illusion, bondage, restriction, shadow self, attachment.',
            'definition':
                'The Devil card represents temptation, addiction, and the darker aspects of human nature. It symbolizes feelings of bondage or restriction, often related to unhealthy attachments, materialism, or self-destructive behaviors. This card serves as a reminder that you may be feeling trapped by your desires or external circumstances. While The Devil can signify challenges and negative patterns, it also encourages you to confront these issues, recognize your power, and break free from what holds you back.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Obsession, unhealthy relationships, temptation, dependency, passion, attraction.',
            'definition':
                'In a love reading, The Devil can indicate unhealthy attachments or obsessive behaviors within a relationship. It may suggest that one or both partners are feeling trapped or overly dependent on each other, leading to toxic dynamics. This card encourages you to assess the health of your relationship and recognize any patterns of control, jealousy, or manipulation. The Devil can also represent intense passion and attraction, urging you to find a balance between desire and freedom in love.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Materialism, unhealthy work environment, job dissatisfaction, ambition, temptation.',
            'definition':
                'In a career context, The Devil may symbolize a toxic work environment or feelings of entrapment in a job that does not fulfill you. It suggests that you may be pursuing material success at the expense of your well-being or happiness. This card encourages you to reflect on your motivations and recognize any patterns of unhealthy ambition or dependence on status and power. The Devil serves as a reminder to seek fulfillment and authenticity in your professional life rather than being driven solely by external rewards.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Shadow work, confronting fears, material attachment, liberation, self-awareness.',
            'definition':
                'Spiritually, The Devil represents the shadow self and the aspects of your psyche that you may be avoiding or denying. It encourages you to confront your fears, desires, and attachments, recognizing how they influence your spiritual journey. This card signifies a call for self-awareness and the need to break free from material or emotional bonds that restrict your growth. The Devil challenges you to embrace your inner power and seek liberation through understanding and acceptance of your true self.',
          },
        },
      ),
      TarotCard(
        name: 'The Tower',
        image: 'assets/images/tarot/thetower.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Sudden change, upheaval, chaos, revelation, destruction, awakening, truth, liberation.',
            'definition':
                'The Tower card represents sudden and unexpected upheaval, often leading to chaos and destruction. It signifies a time of significant change that shakes the foundations of your life, forcing you to confront uncomfortable truths. While this card can be unsettling, it also brings about a necessary awakening, clearing away old structures that no longer serve you. The Tower encourages you to embrace this transformation as an opportunity for growth and renewal, leading to a more authentic and liberated existence.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Relationship upheaval, sudden change, revelation, breaking free, unexpected events.',
            'definition':
                'In a love reading, The Tower suggests that a significant and possibly shocking change is on the horizon in your romantic life. This could manifest as a revelation that changes the dynamics of your relationship or even the end of a partnership that no longer serves you. While this upheaval may feel chaotic, it often paves the way for a more honest and authentic connection. The Tower encourages you to embrace this transformative energy, as it can lead to newfound clarity and freedom in love.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Job loss, sudden change in career, upheaval, re-evaluation of goals, awakening to new possibilities.',
            'definition':
                'In a career context, The Tower signifies sudden changes or disruptions in your professional life. This could include unexpected job loss, changes in company structure, or a realization that prompts you to reassess your career path. While these events may feel unsettling, they serve as a catalyst for growth and awakening. The Tower encourages you to view these challenges as opportunities to break free from outdated roles and pursue new directions that align more closely with your true passions and aspirations.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Spiritual awakening, confronting truths, liberation, upheaval, breaking down illusions.',
            'definition':
                'Spiritually, The Tower represents a profound awakening that shatters illusions and brings hidden truths to light. This card signifies a time of upheaval that forces you to confront aspects of your beliefs or practices that are no longer serving your spiritual growth. While this process can be uncomfortable, it ultimately leads to greater clarity and liberation. The Tower encourages you to embrace the transformative power of these revelations, allowing them to guide you toward a more authentic and enlightened spiritual path.',
          },
        },
      ),
      TarotCard(
        name: 'The Star',
        image: 'assets/images/tarot/thestar.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Hope, inspiration, serenity, healing, renewal, faith, guidance, optimism.',
            'definition':
                'The Star card represents hope, inspiration, and a sense of renewal. It signifies a time of healing and tranquility, encouraging you to look toward the future with optimism. The Star reminds you to trust in the universe and to believe in your potential. It symbolizes guidance and clarity, illuminating your path and providing reassurance during challenging times. This card encourages you to embrace your dreams and aspirations, as it indicates that you are on the right track toward achieving them.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Hopeful relationships, healing, renewed faith in love, inspiration, spiritual connection.',
            'definition':
                'In a love reading, The Star signifies a time of healing and renewal in your romantic life. It suggests that you or your partner are moving past past difficulties and are now open to love and connection. This card encourages you to maintain faith in love and to embrace the spiritual aspects of your relationship. If you\'re single, The Star indicates a period of hope and inspiration, suggesting that love is on the horizon, and encourages you to remain open to new possibilities.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Inspiration in work, renewed motivation, clarity in goals, creative endeavors, positive outlook.',
            'definition':
                'In a career context, The Star represents inspiration and a renewed sense of purpose in your professional life. It suggests that you are gaining clarity about your goals and aspirations, which can lead to positive developments in your career. This card encourages you to pursue your passions and to remain hopeful, as success and fulfillment are within reach. The Star serves as a reminder to embrace your creativity and to trust that your hard work will pay off.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Spiritual guidance, inspiration, hope, healing, connection to the divine.',
            'definition':
                'Spiritually, The Star signifies a deep connection to your inner self and the universe. It represents a time of spiritual healing and renewal, encouraging you to embrace your intuition and trust in your journey. This card serves as a reminder that you are guided and supported by the universe, urging you to remain hopeful and open to spiritual growth. The Star inspires you to seek inner peace and to embrace the light within, guiding you on your spiritual path.',
          },
        },
      ),
      TarotCard(
        name: 'The Moon',
        image: 'assets/images/tarot/themoon.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Intuition, illusion, dreams, subconscious, fear, uncertainty, mystery, hidden truths.',
            'definition':
                'The Moon card represents the realm of the subconscious and the mysteries of the unknown. It signifies a time of introspection, highlighting the importance of trusting your intuition while navigating through uncertainties and illusions. The Moon can evoke feelings of fear or confusion but also encourages you to explore your deeper emotions and dreams. It serves as a reminder to confront hidden truths and to embrace the mystery of life, understanding that not everything is as it seems.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Uncertainty in relationships, hidden feelings, intuition in love, dreams and fantasies.',
            'definition':
                'In a love reading, The Moon suggests that there may be uncertainty or confusion in your romantic life. This card can indicate hidden feelings or emotions that need to be addressed, urging you to trust your intuition about your partner or relationship. It may also represent dreams and fantasies, encouraging you to explore the deeper aspects of your desires. The Moon reminds you to communicate openly with your partner and to be mindful of any illusions that may cloud your perception of love.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Uncertainty in the workplace, trusting your instincts, hidden opportunities, exploring creativity.',
            'definition':
                'In a career context, The Moon signifies uncertainty or confusion regarding your professional path. It may suggest that there are hidden opportunities or challenges that require your attention. This card encourages you to trust your instincts and to tap into your creative side, as inspiration may emerge from unexpected places. The Moon serves as a reminder to be cautious of illusions or miscommunications in the workplace, urging you to seek clarity before making important decisions.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Intuition, exploration of the subconscious, dreams, spiritual growth, facing fears.',
            'definition':
                'Spiritually, The Moon represents a journey into the subconscious and the exploration of your inner self. It encourages you to trust your intuition and to delve into your dreams and emotions for deeper understanding and growth. This card signifies a time of spiritual exploration, urging you to confront any fears or illusions that may be holding you back. The Moon reminds you that spiritual growth often comes from embracing the unknown and navigating the mysteries of your inner world.',
          },
        },
      ),
      TarotCard(
        name: 'The Sun',
        image: 'assets/images/tarot/thesun.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Joy, success, positivity, vitality, abundance, clarity, enlightenment, celebration.',
            'definition':
                'The Sun card represents positivity, success, and vitality. It signifies a time of joy and celebration, illuminating your path with warmth and clarity. This card embodies the energy of life, encouraging you to embrace happiness and abundance. The Sun serves as a reminder that your efforts are being rewarded and that a sense of fulfillment is within reach. It encourages you to express your true self and to radiate positivity in all areas of your life.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Joyful relationships, harmony, success in love, happiness, celebration.',
            'definition':
                'In a love reading, The Sun signifies a time of joy and harmony in your romantic life. It suggests that your relationship is flourishing, filled with love and positivity. This card encourages open communication and celebration of your connection, bringing a sense of fulfillment and happiness. If you’re single, The Sun indicates that love is on the horizon, filled with excitement and joy. Embrace the positivity and warmth that comes from being open to new romantic experiences.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Success, recognition, optimism, growth, fulfillment, abundance.',
            'definition':
                'In a career context, The Sun represents success and recognition in your professional endeavors. It signifies a time of growth and fulfillment, where your hard work and efforts are rewarded. This card encourages you to embrace new opportunities with optimism and to trust in your abilities. The Sun serves as a reminder to stay positive and to celebrate your achievements, as they pave the way for future success and abundance.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Enlightenment, joy, clarity, spiritual growth, positivity.',
            'definition':
                'Spiritually, The Sun signifies enlightenment and clarity on your path. It represents a time of spiritual growth and understanding, encouraging you to embrace the joy and positivity that comes from your spiritual journey. This card reminds you to connect with your inner light and to radiate that energy outward. The Sun encourages you to celebrate your spiritual achievements and to continue exploring the depths of your beliefs with enthusiasm and optimism.',
          },
        },
      ),
      TarotCard(
        name: 'Judgement',
        image: 'assets/images/tarot/judgement.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Rebirth, inner calling, reflection, evaluation, renewal, forgiveness, decision-making.',
            'definition':
                'The Judgement card represents a time of reflection and evaluation, signaling a phase of personal rebirth and transformation. It encourages you to assess your past actions and decisions, leading to a deeper understanding of yourself and your life’s purpose. Judgement often calls for making significant decisions based on self-awareness and inner guidance, reminding you that you have the power to rise above challenges and embrace a new chapter in your life.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Reconciliation, renewal in relationships, self-reflection, forgiveness, transformation.',
            'definition':
                'In a love reading, Judgement signifies a time of reflection and evaluation within your romantic relationships. It may indicate the potential for reconciliation with a partner or the need to address unresolved issues. This card encourages you to be honest with yourself and your partner, leading to healing and transformation. Judgement prompts you to embrace forgiveness and to assess whether your current relationship aligns with your true desires, allowing for growth and renewal.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Career evaluation, new opportunities, self-reflection, important decisions, calling.',
            'definition':
                'In a career context, Judgement signifies a period of self-evaluation and reflection on your professional path. It may indicate an opportunity for a new beginning or a significant change in direction. This card encourages you to listen to your inner calling and to make decisions that align with your true purpose and aspirations. Judgement serves as a reminder to assess your skills and accomplishments, allowing you to embrace new opportunities and pursue a fulfilling career.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Awakening, spiritual renewal, self-discovery, inner calling, transformation.',
            'definition':
                'Spiritually, Judgement represents a profound awakening and transformation. It signifies a time of self-discovery, encouraging you to evaluate your beliefs and spiritual practices. This card calls you to listen to your inner voice and to embrace the changes that lead to personal growth and enlightenment. Judgement reminds you that spiritual evolution often involves letting go of the past and embracing new perspectives, allowing for a deeper connection with your true self and the universe.',
          },
        },
      ),
      TarotCard(
        name: 'The World',
        image: 'assets/images/tarot/theworld.png',
        suit: 'Major Arcana',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            // General
            'keyword':
                'Completion, fulfillment, achievement, wholeness, travel, integration, harmony.',
            'definition':
                'The World card represents the culmination of a journey and the attainment of goals. It signifies a sense of completion and fulfillment, where all the pieces come together to create a harmonious whole. This card embodies a time of celebration and recognition of your achievements, urging you to appreciate the progress you’ve made. The World encourages you to embrace new opportunities and experiences as you prepare for the next chapter of your life, reminding you that your journey is an ongoing process of growth and discovery.',
          },
          QuestionType.getAllTypes()[1]: {
            // Love
            'keyword':
                'Wholeness in relationships, harmony, fulfillment, commitment, celebration.',
            'definition':
                'In a love reading, The World signifies a sense of completion and fulfillment in your romantic life. It may indicate a deep sense of harmony and balance in your relationship, where both partners feel whole and supported. This card encourages you to celebrate your love and the achievements you\'ve made together, possibly even leading to commitments such as marriage or starting a family. If you\'re single, The World suggests that you are ready to embrace new love, feeling fulfilled within yourself and open to meaningful connections.',
          },
          QuestionType.getAllTypes()[2]: {
            // Career
            'keyword':
                'Achievement, success, recognition, fulfillment, new opportunities, global perspective.',
            'definition':
                'In a career context, The World represents success and achievement, indicating that you have reached a significant milestone in your professional journey. It signifies recognition for your hard work and accomplishments, encouraging you to take pride in your achievements. This card may also suggest new opportunities on the horizon, possibly involving travel or working on a global scale. The World encourages you to embrace the lessons learned and to prepare for the next phase of your career with confidence and optimism.',
          },
          QuestionType.getAllTypes()[3]: {
            // Spiritual
            'keyword':
                'Completion, enlightenment, unity, spiritual fulfillment, integration.',
            'definition':
                'Spiritually, The World signifies a sense of completion and enlightenment in your spiritual journey. It represents the integration of lessons learned and the wholeness that comes from self-discovery. This card encourages you to celebrate your spiritual achievements and to embrace the unity of all aspects of your being. The World serves as a reminder that your spiritual journey is ongoing and that each phase of growth leads to new understanding and opportunities for expansion.',
          },
        },
      ),
      // cups
      TarotCard(
        name: 'Ace',
        image: 'assets/images/tarot/aceofcups.png',
        suit: 'Cups',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'New beginnings, emotional fulfillment, love, joy, creativity, intuition, compassion.',
            'definition':
                'The Ace of Cups signifies the start of a new emotional journey or the blossoming of feelings. It represents the potential for love, joy, and spiritual fulfillment, encouraging you to embrace your emotions and connect with your heart. This card embodies the idea of opening up to new experiences and nurturing your inner self. The Ace of Cups serves as a reminder to allow your intuition and compassion to guide you as you navigate through life\'s emotional landscape.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'New romance, deep emotional connections, love, compassion, joy.',
            'definition':
                'In a love reading, the Ace of Cups heralds the beginning of a new romantic relationship or the deepening of existing emotional bonds. It signifies a time of emotional openness and joy, where love flows freely and abundantly. This card encourages you to express your feelings and to be receptive to love, fostering deeper connections with others. The Ace of Cups reminds you to approach love with an open heart and to embrace the beauty of emotional intimacy.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Creative opportunities, emotional fulfillment, passion, inspiration, new beginnings.',
            'definition':
                'In a career context, the Ace of Cups indicates the emergence of new opportunities that align with your passions and creativity. It suggests that you may be entering a phase where your work becomes emotionally fulfilling, inspiring you to pursue projects that resonate with your heart. This card encourages you to embrace your creative instincts and to cultivate a work environment that nurtures your emotional well-being. The Ace of Cups serves as a reminder to follow your heart in your career decisions.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual awakening, emotional healing, intuition, compassion, self-love.',
            'definition':
                'Spiritually, the Ace of Cups represents a time of awakening and emotional healing. It encourages you to connect with your inner self and to embrace your intuition and compassion. This card signifies a renewal of spiritual energy and the potential for deep emotional and spiritual growth. The Ace of Cups reminds you to practice self-love and to nurture your spiritual well-being, allowing your emotions to guide you on your journey of self-discovery and fulfillment.',
          },
        },
      ),
      TarotCard(
        name: 'Two',
        image: 'assets/images/tarot/twoofcups.png',
        suit: 'Cups',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Partnership, unity, love, harmony, connection, mutual respect, collaboration.',
            'definition':
                'The Two of Cups signifies the formation of a deep connection or partnership, highlighting themes of love, harmony, and mutual respect. This card embodies the idea of two individuals coming together, whether in romantic relationships, friendships, or collaborative ventures. It represents balance and reciprocity, encouraging you to foster open communication and understanding in your relationships. The Two of Cups serves as a reminder that healthy partnerships can lead to personal growth and emotional fulfillment.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Deep emotional connections, romantic partnership, mutual attraction, harmony.',
            'definition':
                'In a love reading, the Two of Cups represents a strong romantic bond between partners. It signifies mutual attraction, affection, and a deep emotional connection, emphasizing the importance of communication and understanding. This card suggests that your relationship is built on a solid foundation of respect and love, encouraging you to nurture and celebrate this bond. If you’re single, the Two of Cups may indicate the potential for a meaningful new relationship, inviting you to remain open to love and connection.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Collaboration, teamwork, partnership, shared goals, mutual support.',
            'definition':
                'In a career context, the Two of Cups signifies successful collaboration and teamwork. It indicates that you may be entering a phase where partnerships play a crucial role in achieving your professional goals. This card encourages you to foster strong working relationships, emphasizing the importance of communication and shared vision. The Two of Cups serves as a reminder that working together with others can lead to greater success and fulfillment in your career.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Connection, balance, harmony, mutual support, spiritual partnership.',
            'definition':
                'Spiritually, the Two of Cups represents a deep connection to others and the universe. It signifies the importance of relationships in your spiritual journey, encouraging you to seek harmony and balance within yourself and with those around you. This card may also indicate a spiritual partnership that enhances your growth and understanding. The Two of Cups serves as a reminder that nurturing relationships can lead to profound spiritual insights and a sense of belonging.',
          },
        },
      ),
      TarotCard(
        name: 'Three',
        image: 'assets/images/tarot/threeofcups.png',
        suit: 'Cups',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Celebration, friendship, community, joy, collaboration, support.',
            'definition':
                'The Three of Cups signifies a time of celebration and joy, often in the context of friendships and community. It represents the importance of social connections and shared experiences, encouraging you to revel in moments of happiness with others. This card embodies the spirit of collaboration and support, reminding you to appreciate the bonds you share and the joy that comes from celebrating milestones together.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Celebration of love, joy in relationships, friendships, community support.',
            'definition':
                'In a love reading, the Three of Cups represents joyful moments shared between partners, often signifying celebrations such as engagements, weddings, or anniversaries. It indicates a sense of camaraderie and support within your romantic relationship, highlighting the importance of friendship and shared experiences. This card encourages you to cherish the joyful moments in your relationship and to involve friends and family in your love life.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Teamwork, collaboration, celebration of achievements, networking.',
            'definition':
                'In a career context, the Three of Cups signifies successful collaboration and teamwork. It suggests a time of celebrating achievements with colleagues and recognizing the importance of networking and community in your professional life. This card encourages you to foster positive relationships at work, emphasizing the value of collaboration and support in achieving your goals.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Joy in community, spiritual support, shared experiences, celebration of life.',
            'definition':
                'Spiritually, the Three of Cups represents the joy of connection and community in your spiritual journey. It signifies a time of shared experiences and support among like-minded individuals, encouraging you to celebrate life’s blessings together. This card serves as a reminder that spiritual growth is often enhanced by the connections you share with others.',
          },
        },
      ),
      TarotCard(
        name: 'Four',
        image: 'assets/images/tarot/fourofcups.png',
        suit: 'Cups',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Contemplation, apathy, reevaluation, introspection, missed opportunities.',
            'definition':
                'The Four of Cups represents a period of introspection and contemplation, where you may feel disconnected or discontent with your current situation. It suggests a time of reevaluating your emotional state and what truly brings you fulfillment. This card encourages you to look beyond the surface and consider new opportunities that may be presented to you, even if you are feeling apathetic or indifferent.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Emotional withdrawal, contemplation, reevaluation of relationships, missed connections.',
            'definition':
                'In a love reading, the Four of Cups may indicate feelings of emotional withdrawal or discontent within your romantic life. You may find yourself reevaluating your current relationship or feeling disconnected from your partner. This card encourages you to reflect on what you truly desire in love and to be open to new possibilities, as there may be opportunities for connection that you are currently overlooking.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Reevaluation, apathy, missed opportunities, introspection.',
            'definition':
                'In a career context, the Four of Cups signifies a period of introspection and reevaluation of your professional path. You may feel discontent or apathetic about your current job or projects, leading you to contemplate new directions. This card encourages you to consider what truly fulfills you in your career and to be open to opportunities that may arise, even if they seem unappealing at first.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Introspection, reevaluation, emotional discontent, seeking deeper meaning.',
            'definition':
                'Spiritually, the Four of Cups represents a time of introspection and reevaluation of your beliefs and spiritual practices. You may feel disconnected from your spiritual path or dissatisfied with your current experiences. This card encourages you to reflect on what truly resonates with your soul and to seek deeper meaning and fulfillment in your spiritual journey.',
          },
        },
      ),
      TarotCard(
        name: 'Five',
        image: 'assets/images/tarot/fiveofcups.png',
        suit: 'Cups',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Loss, grief, disappointment, focusing on the negative, emotional struggles.',
            'definition':
                'The Five of Cups signifies a time of loss and disappointment, often highlighting feelings of grief or emotional struggle. This card represents a tendency to focus on what has been lost rather than what remains. It serves as a reminder that while it’s important to acknowledge your feelings, it’s equally vital to recognize the opportunities for healing and growth that still exist.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Heartbreak, emotional pain, focusing on loss, missed opportunities.',
            'definition':
                'In a love reading, the Five of Cups indicates feelings of heartbreak, disappointment, or emotional pain. You may be focusing on what has gone wrong in your relationship or mourning a lost connection. This card encourages you to acknowledge your feelings but also to recognize the potential for new love or healing that exists around you. It reminds you to be open to the possibilities that life still has to offer, even in the face of grief.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Disappointment, setbacks, focusing on failures, missed opportunities.',
            'definition':
                'In a career context, the Five of Cups signifies feelings of disappointment or loss related to your professional path. You may be dwelling on past failures or setbacks, which can hinder your progress. This card encourages you to acknowledge these feelings but to also look for lessons learned and opportunities for growth. It serves as a reminder that even amidst disappointment, there are still chances for new beginnings and successes.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Grief, emotional pain, focusing on loss, seeking healing.',
            'definition':
                'Spiritually, the Five of Cups represents a period of grief or emotional pain, where you may be struggling to find meaning in your experiences. This card encourages you to acknowledge your feelings and to seek healing through self-reflection and spiritual practices. It reminds you that while loss can be painful, it can also lead to personal growth and deeper understanding of your spiritual path.',
          },
        },
      ),
      TarotCard(
        name: 'Six',
        image: 'assets/images/tarot/sixofcups.png',
        suit: 'Cups',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Nostalgia, childhood memories, innocence, joy, generosity, emotional connections.',
            'definition':
                'The Six of Cups represents a sense of nostalgia and fond memories, often linked to childhood or past experiences. This card embodies the joy of innocence and the beauty of emotional connections. It encourages you to embrace the simple pleasures in life and to connect with others on a deeper, more heartfelt level. The Six of Cups also suggests a time for generosity and sharing, as the bonds of friendship and family are highlighted.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Nostalgia in love, childhood connections, emotional bonds, rekindling relationships.',
            'definition':
                'In a love reading, the Six of Cups signifies a return to the innocence and joy of a past relationship. It may indicate rekindling old flames or experiencing love that feels familiar and comforting. This card emphasizes the importance of emotional bonds and suggests that revisiting past memories can enhance your current relationship. It encourages you to embrace playfulness and tenderness in your romantic connections.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Past influences, revisiting old projects, nostalgia in the workplace, mentorship.',
            'definition':
                'In a career context, the Six of Cups suggests a connection to your past work experiences or mentors. It may indicate revisiting old projects or drawing inspiration from earlier times in your professional journey. This card encourages you to embrace the lessons learned from your past and to foster relationships with colleagues that reflect support and understanding.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Innocence, emotional healing, connection to the past, rediscovering joy.',
            'definition':
                'Spiritually, the Six of Cups represents a return to innocence and a deep connection with your past. It encourages you to reflect on your childhood memories and to find joy in simple pleasures. This card signifies a time for emotional healing and rediscovering the wonder and magic of life, inviting you to connect with your inner child and embrace spiritual growth through joyful experiences.',
          },
        },
      ),
      TarotCard(
        name: 'Seven',
        image: 'assets/images/tarot/sevenofcups.png',
        suit: 'Cups',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Choices, illusions, daydreams, possibilities, confusion, indecision.',
            'definition':
                'The Seven of Cups signifies a multitude of choices and possibilities, often accompanied by confusion or uncertainty. This card represents the temptation to get lost in fantasies or illusions rather than facing reality. It encourages you to evaluate your options carefully and to discern between what is genuine and what is merely an illusion. The Seven of Cups serves as a reminder to focus on clarity and purpose when making decisions.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Choices in love, confusion, fantasy vs. reality, indecision in relationships.',
            'definition':
                'In a love reading, the Seven of Cups indicates a time of choices and possibilities in your romantic life. You may find yourself facing multiple options or feeling confused about what you truly want. This card encourages you to take a step back and evaluate your desires, reminding you to discern between fantasy and reality in your relationships. It emphasizes the importance of clear communication and honesty in love.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Career choices, indecision, exploring options, distractions.',
            'definition':
                'In a career context, the Seven of Cups signifies a time of exploration and numerous career possibilities. However, it can also indicate confusion and indecision about which path to take. This card encourages you to evaluate your options carefully and to avoid getting lost in distractions or unrealistic fantasies about your career. It reminds you to focus on what aligns with your true values and goals.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual choices, exploring beliefs, confusion, illusion vs. reality.',
            'definition':
                'Spiritually, the Seven of Cups represents a time of exploration and evaluation of your beliefs and spiritual practices. You may be facing various paths and options, leading to confusion about what resonates with your soul. This card encourages you to seek clarity and to discern between genuine spiritual growth and mere illusion. It reminds you to focus on what truly nourishes your spirit.',
          },
        },
      ),
      TarotCard(
        name: 'Eight',
        image: 'assets/images/tarot/eightofcups.png',
        suit: 'Cups',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Abandonment, walking away, seeking deeper meaning, introspection, emotional withdrawal.',
            'definition':
                'The Eight of Cups signifies a period of leaving behind what no longer serves you, often in search of deeper meaning and fulfillment. This card represents a conscious decision to abandon certain aspects of your life—whether they be relationships, jobs, or situations—in pursuit of greater emotional or spiritual satisfaction. It encourages introspection and the courage to pursue your true desires, even if it means walking away from the familiar.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Leaving unfulfilling relationships, seeking deeper connections, emotional withdrawal.',
            'definition':
                'In a love reading, the Eight of Cups indicates a decision to walk away from a relationship that feels unfulfilling or stagnant. It signifies a quest for deeper emotional connections and a desire for growth. This card encourages you to listen to your intuition and to seek relationships that truly resonate with your heart. It may also suggest a need for introspection before pursuing new love.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Leaving a job, seeking greater fulfillment, emotional withdrawal from work.',
            'definition':
                'In a career context, the Eight of Cups signifies a decision to leave a job or professional path that no longer brings satisfaction. This card represents a quest for greater fulfillment and meaning in your work. It encourages you to reflect on what you truly desire in your career and to be courageous in pursuing paths that align with your true passions.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Seeking deeper meaning, emotional withdrawal, introspection, spiritual journey.',
            'definition':
                'Spiritually, the Eight of Cups represents a quest for deeper meaning and fulfillment. It signifies a time of introspection and emotional withdrawal as you seek to understand your true spiritual path. This card encourages you to let go of superficial beliefs or practices that no longer resonate with your soul and to pursue a more authentic spiritual journey.',
          },
        },
      ),
      TarotCard(
        name: 'Nine',
        image: 'assets/images/tarot/nineofcups.png',
        suit: 'Cups',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Contentment, satisfaction, emotional fulfillment, wishes granted, abundance.',
            'definition':
                'The Nine of Cups represents a sense of emotional fulfillment and satisfaction, often referred to as the "wish card." It signifies that your desires and dreams are within reach and that you are in a period of abundance. This card encourages you to appreciate what you have and to recognize the joy in your life. It embodies a feeling of contentment and the realization of personal goals, suggesting that your hard work is paying off.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Emotional fulfillment, contentment in relationships, wishes granted in love.',
            'definition':
                'In a love reading, the Nine of Cups signifies emotional satisfaction and happiness in your romantic life. It indicates that your wishes for love and connection are coming true, leading to a fulfilling and joyous relationship. This card encourages you to appreciate the love you have and to celebrate the moments of joy and contentment with your partner.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Job satisfaction, accomplishments, recognition, emotional fulfillment at work.',
            'definition':
                'In a career context, the Nine of Cups signifies a time of satisfaction and fulfillment in your professional life. You may find that your hard work has led to recognition and success, bringing a sense of joy and accomplishment. This card encourages you to celebrate your achievements and to continue pursuing your passions in your career.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Inner fulfillment, spiritual contentment, abundance in life.',
            'definition':
                'Spiritually, the Nine of Cups represents a deep sense of inner fulfillment and joy. It signifies a time of spiritual abundance and emotional satisfaction, encouraging you to recognize the blessings in your life. This card reminds you to appreciate your spiritual journey and to find joy in your connection to the universe.',
          },
        },
      ),
      TarotCard(
        name: 'Ten',
        image: 'assets/images/tarot/tenofcups.png',
        suit: 'Cups',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Harmony, happiness, emotional fulfillment, family, lasting relationships.',
            'definition':
                'The Ten of Cups represents a state of emotional fulfillment and harmony, often associated with family and lasting relationships. It signifies a time of joy and contentment in your personal life, where your dreams and aspirations for happiness are realized. This card encourages you to cherish your loved ones and to appreciate the strong emotional bonds you share, suggesting a deep sense of unity and happiness.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Lasting love, harmony in relationships, family happiness, emotional fulfillment.',
            'definition':
                'In a love reading, the Ten of Cups signifies a deep emotional connection and fulfillment in your romantic life. It indicates that your relationship is strong and harmonious, leading to lasting happiness. This card encourages you to focus on building a loving and supportive partnership, celebrating the joy that comes from emotional unity and shared goals.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Job satisfaction, supportive work environment, teamwork, fulfillment in career.',
            'definition':
                'In a career context, the Ten of Cups signifies a positive and fulfilling work environment. It suggests that you may find joy and satisfaction in collaborative efforts and teamwork. This card encourages you to cultivate strong relationships with colleagues and to focus on creating a harmonious workplace where everyone feels valued and supported.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual harmony, connection with family, emotional fulfillment in spirituality.',
            'definition':
                'Spiritually, the Ten of Cups represents a deep sense of harmony and fulfillment. It signifies a connection with your spiritual beliefs that brings emotional satisfaction and joy. This card encourages you to appreciate the spiritual bonds you share with your family and loved ones, emphasizing the importance of unity and support on your spiritual journey.',
          },
        },
      ),
      TarotCard(
        name: 'Page',
        image: 'assets/images/tarot/pageofcups.png',
        suit: 'Cups',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Creativity, intuition, emotional openness, new beginnings, exploration.',
            'definition':
                'The Page of Cups symbolizes emotional openness and creativity. It represents a youthful spirit, often embodying new beginnings in relationships or creative endeavors. This card encourages you to embrace your intuition and to explore your emotions freely, suggesting a time of inspiration and playfulness. The Page of Cups reminds you to stay open to new experiences and to approach life with a sense of wonder.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'New love, emotional exploration, openness, creative expression in relationships.',
            'definition':
                'In a love reading, the Page of Cups signifies the beginning of new romantic possibilities or a fresh emotional connection. It encourages you to explore your feelings and to express your emotions openly. This card may suggest a playful and creative approach to love, reminding you to embrace the joy and excitement that comes with new relationships or renewed feelings in existing ones.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Creativity in work, new opportunities, emotional intelligence, fresh perspectives.',
            'definition':
                'In a career context, the Page of Cups indicates a time of creative inspiration and new opportunities. It encourages you to embrace your creative side and to explore innovative ideas in your work. This card highlights the importance of emotional intelligence in professional relationships, reminding you to approach your career with an open heart and mind.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Intuition, emotional exploration, creative expression, spiritual curiosity.',
            'definition':
                'Spiritually, the Page of Cups represents a journey of self-discovery and emotional exploration. It signifies a time of heightened intuition and creativity, encouraging you to embrace your spiritual path with curiosity and openness. This card reminds you to listen to your inner voice and to express your emotions as part of your spiritual growth.',
          },
        },
      ),
      TarotCard(
        name: 'Knight',
        image: 'assets/images/tarot/knightofcups.png',
        suit: 'Cups',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Romance, idealism, charm, following the heart, creativity.',
            'definition':
                'The Knight of Cups represents a romantic and idealistic approach to life. This card signifies a person who is in touch with their emotions and is often seen as a dreamer, pursuing passions and creative endeavors. The Knight encourages you to follow your heart and to be open to love and new experiences. It embodies the pursuit of beauty and inspiration, suggesting a time of emotional exploration and creativity.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Romantic gestures, ideal love, following your heart, emotional expression.',
            'definition':
                'In a love reading, the Knight of Cups signifies romance and emotional expression. This card often represents a person who is charming and in touch with their feelings, bringing a sense of adventure and idealism to their relationships. It encourages you to embrace your romantic side and to express your emotions openly, whether you\'re seeking new love or nurturing an existing relationship.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Creative pursuits, following passions, inspiration, emotional connection in work.',
            'definition':
                'In a career context, the Knight of Cups indicates a time of pursuing creative passions and following your heart in your professional life. This card encourages you to be open to new opportunities and to seek work that resonates with your emotions and values. It may suggest collaboration or projects that require emotional intelligence and creativity.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Intuition, emotional exploration, creativity, following your spiritual path.',
            'definition':
                'Spiritually, the Knight of Cups represents a journey of emotional exploration and intuition. It signifies a time of connecting with your inner self and following your spiritual path with an open heart. This card encourages you to embrace your creativity and to be receptive to inspiration from the universe as you navigate your spiritual journey.',
          },
        },
      ),
      TarotCard(
        name: 'Queen',
        image: 'assets/images/tarot/queenofcups.png',
        suit: 'Cups',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Compassion, nurturing, emotional intelligence, intuition, healing.',
            'definition':
                'The Queen of Cups embodies emotional depth, compassion, and nurturing qualities. She represents someone who is deeply in touch with their feelings and those of others, offering support and understanding. This card encourages you to trust your intuition and to embrace your emotional intelligence, suggesting a time of healing and caring for yourself and others.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Nurturing relationships, emotional connection, compassion, intuitive love.',
            'definition':
                'In a love reading, the Queen of Cups signifies deep emotional connections and nurturing relationships. This card encourages you to approach love with compassion and understanding, fostering open communication and emotional support. It may also indicate a time of healing within a relationship or the importance of caring for your partner\'s emotional needs.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Emotional intelligence in work, nurturing leadership, creativity, support in the workplace.',
            'definition':
                'In a career context, the Queen of Cups represents emotional intelligence and nurturing qualities in professional relationships. This card encourages you to create a supportive environment for colleagues and to trust your intuition when making decisions. It signifies a time of creativity and collaboration, highlighting the importance of emotional connections in the workplace.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Intuition, emotional healing, spiritual nurturing, self-care.',
            'definition':
                'Spiritually, the Queen of Cups symbolizes a deep connection to your inner self and intuition. This card encourages you to engage in self-care and emotional healing as part of your spiritual journey. It signifies a time of nurturing your spirit and embracing your empathetic nature, allowing you to connect with your higher self and those around you.',
          },
        },
      ),
      TarotCard(
        name: 'King',
        image: 'assets/images/tarot/kingofcups.png',
        suit: 'Cups',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Emotional balance, compassion, wisdom, diplomacy, leadership.',
            'definition':
                'The King of Cups represents emotional maturity, balance, and wisdom. He embodies a person who is in control of their emotions and uses their understanding to guide and support others. This card encourages you to approach situations with empathy and compassion, suggesting a time of leadership that is grounded in emotional intelligence.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Mature love, emotional support, wisdom in relationships, compassion.',
            'definition':
                'In a love reading, the King of Cups signifies a deep and mature emotional connection. This card encourages you to approach relationships with compassion and understanding, emphasizing the importance of emotional support and communication. It may indicate a partner who embodies these qualities or a reminder for you to nurture these aspects within yourself.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Leadership, emotional intelligence, support in the workplace, wise decisions.',
            'definition':
                'In a career context, the King of Cups represents a leadership style that is rooted in emotional intelligence and compassion. This card encourages you to use your wisdom and understanding to support others in the workplace. It signifies a time of making wise decisions that take into account the feelings and needs of those around you, fostering a harmonious work environment.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Emotional wisdom, compassion, spiritual leadership, understanding.',
            'definition':
                'Spiritually, the King of Cups symbolizes emotional wisdom and the ability to connect deeply with others on a spiritual level. This card encourages you to embrace your compassionate nature and to act as a leader in your spiritual community. It signifies a time of understanding and guiding others through their spiritual journeys, fostering a sense of emotional balance and connection.',
          },
        },
      ),
      // pentacles
      TarotCard(
        name: 'Ace',
        image: 'assets/images/tarot/aceofpentacles.png',
        suit: 'Pentacles',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'New beginnings, prosperity, opportunity, manifestation, stability.',
            'definition':
                'The Ace of Pentacles represents new financial or material opportunities. It symbolizes the potential for prosperity, growth, and stability. This card encourages you to embrace new ventures or investments, as it signifies a time when your hard work can lead to tangible results. The Ace of Pentacles is a reminder to stay grounded and focused on your goals.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'New beginnings in love, stable relationship, commitment, security.',
            'definition':
                'In a love reading, the Ace of Pentacles indicates the potential for a new relationship or a fresh start in an existing one. It suggests stability, security, and the possibility of building a strong foundation with your partner. This card encourages you to invest time and effort into nurturing your relationships.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'New job, financial opportunity, promotions, tangible results.',
            'definition':
                'In a career context, the Ace of Pentacles signifies new job opportunities, promotions, or financial gains. This card encourages you to seize opportunities that can lead to tangible results and to focus on your long-term goals. It represents the start of a prosperous journey in your professional life.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Manifestation, grounding, material abundance, stability in spiritual practice.',
            'definition':
                'Spiritually, the Ace of Pentacles encourages you to ground your spiritual practices in reality. This card signifies the importance of manifesting your goals and desires in the physical world. It suggests a time to focus on your material and spiritual well-being, fostering a balanced approach to both.',
          },
        },
      ),
      TarotCard(
        name: 'Two',
        image: 'assets/images/tarot/twoofpentacles.png',
        suit: 'Pentacles',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Balance, multitasking, adaptability, priorities, resource management.',
            'definition':
                'The Two of Pentacles represents the need for balance and adaptability in your life. It signifies the juggling of multiple responsibilities or projects, urging you to prioritize and manage your resources wisely. This card encourages you to remain flexible and open to change as you navigate your various commitments.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Balancing relationships, flexibility, adapting to change, priorities.',
            'definition':
                'In a love reading, the Two of Pentacles suggests a need to find balance in your relationships. It may indicate juggling commitments or adapting to changes within your partnership. This card encourages open communication and flexibility to ensure that both partners\' needs are met.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Multitasking, managing responsibilities, adaptability, prioritizing tasks.',
            'definition':
                'In a career context, the Two of Pentacles signifies the ability to manage multiple projects or responsibilities effectively. This card encourages you to prioritize tasks and adapt to changing circumstances in your work environment. It represents the importance of maintaining balance to avoid feeling overwhelmed.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Balancing spiritual practices, flexibility in beliefs, adaptability.',
            'definition':
                'Spiritually, the Two of Pentacles encourages you to find balance in your spiritual practices and beliefs. It suggests being open to new ideas and adaptable in your spiritual journey. This card signifies a time of exploring different aspects of spirituality while maintaining a sense of equilibrium.',
          },
        },
      ),
      TarotCard(
        name: 'Three',
        image: 'assets/images/tarot/threeofpentacles.png',
        suit: 'Pentacles',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Collaboration, teamwork, skill development, recognition, building foundations.',
            'definition':
                'The Three of Pentacles represents collaboration and teamwork in achieving common goals. It signifies the importance of working together and valuing each other\'s skills and contributions. This card encourages you to recognize the value of collaboration and the progress that comes from combining efforts with others.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Partnership, teamwork in love, building together, shared goals.',
            'definition':
                'In a love reading, the Three of Pentacles indicates the importance of partnership and teamwork in your relationship. It suggests working together towards shared goals and valuing each other\'s contributions. This card encourages open communication and collaboration to strengthen your bond.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Teamwork, skill sharing, recognition of talents, building projects.',
            'definition':
                'In a career context, the Three of Pentacles signifies collaboration and teamwork in your professional life. It indicates that your skills and efforts will be recognized and appreciated. This card encourages you to embrace teamwork and to contribute your talents to collective projects.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Community, spiritual collaboration, shared beliefs, growth through connection.',
            'definition':
                'Spiritually, the Three of Pentacles encourages you to seek community and collaboration in your spiritual journey. It signifies the importance of shared beliefs and growth through connection with others. This card encourages you to engage with like-minded individuals and to build a supportive spiritual network.',
          },
        },
      ),
      TarotCard(
        name: 'Four',
        image: 'assets/images/tarot/fourofpentacles.png',
        suit: 'Pentacles',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Control, stability, security, holding on, fear of loss.',
            'definition':
                'The Four of Pentacles represents a desire for control and stability, often at the expense of growth and flexibility. This card signifies a tendency to hold on tightly to what you have, whether it be money, possessions, or relationships, due to a fear of loss. It encourages you to reflect on your motivations and consider whether your need for security is hindering your growth.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Fear of loss in relationships, possessiveness, holding on, emotional security.',
            'definition':
                'In a love reading, the Four of Pentacles indicates a fear of loss or possessiveness within a relationship. This card may suggest that you or your partner are holding on too tightly, which can lead to stagnation. It encourages you to evaluate your emotional security and consider ways to foster a more open and trusting connection.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Holding on to job security, fear of change, control over finances.',
            'definition':
                'In a career context, the Four of Pentacles signifies a strong desire for job security and control over your finances. This card may indicate a reluctance to take risks or embrace change due to a fear of losing what you have. It encourages you to assess whether this mindset is preventing you from pursuing new opportunities for growth.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Fear of vulnerability, control in spiritual beliefs, attachment to materialism.',
            'definition':
                'Spiritually, the Four of Pentacles signifies a fear of vulnerability and a tendency to cling to material beliefs. This card encourages you to reflect on your attachments and consider whether they are hindering your spiritual growth. It suggests that embracing a more open and flexible approach to spirituality may lead to deeper insights and connections.',
          },
        },
      ),
      TarotCard(
        name: 'Five',
        image: 'assets/images/tarot/fiveofpentacles.png',
        suit: 'Pentacles',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Financial loss, hardship, struggle, feeling left out, insecurity.',
            'definition':
                'The Five of Pentacles signifies a period of financial hardship or struggle. It represents feelings of insecurity and the fear of loss, often leading to a sense of isolation. This card encourages you to seek support and remind you that help is available, even if it\'s not immediately visible.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Struggles in relationships, feeling neglected, emotional isolation.',
            'definition':
                'In a love reading, the Five of Pentacles may indicate struggles or difficulties within a relationship. It suggests feelings of neglect or emotional distance between partners. This card encourages open communication and the pursuit of support to overcome challenges together.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Job loss, financial difficulties, feeling undervalued, struggle to make ends meet.',
            'definition':
                'In a career context, the Five of Pentacles signifies financial difficulties or job loss. It may indicate a lack of appreciation or feeling undervalued at work. This card encourages you to seek new opportunities and support systems to improve your situation.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual isolation, seeking guidance, overcoming adversity.',
            'definition':
                'Spiritually, the Five of Pentacles represents a sense of isolation or disconnection from your spiritual path. It suggests a need to seek guidance and support from others. This card encourages you to remember that even in difficult times, spiritual growth and understanding can emerge.',
          },
        },
      ),
      TarotCard(
        name: 'Six',
        image: 'assets/images/tarot/sixofpentacles.png',
        suit: 'Pentacles',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Generosity, giving and receiving, balance, financial assistance, charity.',
            'definition':
                'The Six of Pentacles represents the balance of giving and receiving. It signifies generosity and the act of sharing resources with those in need. This card encourages you to cultivate a spirit of generosity and to recognize the importance of both helping others and accepting help when needed.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Balance in relationships, mutual support, giving and receiving love.',
            'definition':
                'In a love reading, the Six of Pentacles suggests a balanced relationship where both partners support each other. It encourages open communication and the willingness to give and receive love. This card signifies a healthy exchange of emotions and resources in your partnership.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Fairness in the workplace, assistance, mentorship, charitable work.',
            'definition':
                'In a career context, the Six of Pentacles signifies fairness and balance in your professional life. It may indicate opportunities for mentorship or assistance, encouraging you to share your knowledge and resources with others. This card emphasizes the importance of a supportive work environment.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual generosity, sharing wisdom, balance in spiritual practices.',
            'definition':
                'Spiritually, the Six of Pentacles encourages you to share your spiritual insights and knowledge with others. It signifies the importance of balance in your spiritual practices, reminding you to both give and receive guidance and support within your spiritual community.',
          },
        },
      ),
      TarotCard(
        name: 'Seven',
        image: 'assets/images/tarot/sevenofpentacles.png',
        suit: 'Pentacles',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Patience, perseverance, long-term success, assessment, re-evaluation.',
            'definition':
                'The Seven of Pentacles represents a period of assessment and reflection on your efforts. It signifies the importance of patience and perseverance as you evaluate your progress towards your goals. This card encourages you to take a step back, reflect on your investments, and consider whether adjustments are needed for future success.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Evaluating relationships, patience, long-term commitment.',
            'definition':
                'In a love reading, the Seven of Pentacles indicates a time of evaluation in your relationship. It suggests reflecting on the growth and progress of your partnership. This card encourages open communication about your future together and reassessing your commitments and shared goals.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Assessment of progress, patience in career development, long-term goals.',
            'definition':
                'In a career context, the Seven of Pentacles signifies a time for reflection on your career path and achievements. It encourages you to assess your progress and consider whether your current trajectory aligns with your long-term goals. This card reminds you that success often requires patience and ongoing',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Reflection on spiritual growth, patience, evaluation of practices.',
            'definition':
                'Spiritually, the Seven of Pentacles encourages you to reflect on your spiritual journey and growth. It signifies a time for evaluation and consideration of your beliefs and practices. This card encourages you to be patient and trust the process of spiritual development.',
          },
        },
      ),
      TarotCard(
        name: 'Eight',
        image: 'assets/images/tarot/eightofpentacles.png',
        suit: 'Pentacles',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Hard work, diligence, skill development, craftsmanship, dedication.',
            'definition':
                'The Eight of Pentacles signifies hard work and dedication to mastering a skill or craft. It represents a commitment to continuous improvement and personal development. This card encourages you to stay focused on your goals and to take pride in your work and achievements.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Commitment to growth, working on relationships, dedication.',
            'definition':
                'In a love reading, the Eight of Pentacles indicates a commitment to growth and improvement within your relationship. It suggests that both partners are willing to put in the effort to strengthen their bond. This card encourages you to nurture your connection and appreciate the work that goes into maintaining a healthy relationship.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Skill mastery, dedication to work, attention to detail, apprenticeship.',
            'definition':
                'In a career context, the Eight of Pentacles signifies a strong commitment to mastering your craft. It may indicate the pursuit of additional training or education to enhance your skills. This card encourages you to take pride in your work and focus on the details that lead to success.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Dedication to spiritual practice, personal growth, attention to detail in beliefs.',
            'definition':
                'Spiritually, the Eight of Pentacles encourages you to dedicate yourself to your spiritual practices and personal growth. It signifies the importance of refining your beliefs and paying attention to the details that nurture your spiritual development. This card encourages ongoing effort and commitment to your spiritual journey.',
          },
        },
      ),
      TarotCard(
        name: 'Nine',
        image: 'assets/images/tarot/nineofpentacles.png',
        suit: 'Pentacles',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Independence, self-sufficiency, financial security, luxury, abundance.',
            'definition':
                'The Nine of Pentacles represents financial security and independence. It signifies a time of enjoying the fruits of your labor and embracing a sense of self-sufficiency. This card encourages you to take pride in your accomplishments and to appreciate the abundance that comes from your hard work.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Independence in love, self-sufficiency, enjoying time alone, healthy boundaries.',
            'definition':
                'In a love reading, the Nine of Pentacles suggests a strong sense of independence within a relationship. It encourages you to value your individuality and to maintain healthy boundaries. This card signifies a time to enjoy your own company and to appreciate the stability you bring to your partnership.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Financial independence, success, enjoying achievements, self-made.',
            'definition':
                'In a career context, the Nine of Pentacles signifies financial independence and success resulting from your hard work. It encourages you to take pride in your achievements and to enjoy the rewards of your efforts. This card may indicate that you are well-established in your career and able to enjoy the luxuries that come with it.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Self-sufficiency in beliefs, inner peace, spiritual abundance.',
            'definition':
                'Spiritually, the Nine of Pentacles signifies a strong sense of self-sufficiency and inner peace. It encourages you to embrace your spiritual beliefs and to appreciate the abundance that comes from your spiritual journey. This card represents a time of enjoying the fruits of your spiritual growth and understanding.',
          },
        },
      ),
      TarotCard(
        name: 'Ten',
        image: 'assets/images/tarot/tenofpentacles.png',
        suit: 'Pentacles',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword': 'Wealth, legacy, family, long-term success, stability.',
            'definition':
                'The Ten of Pentacles represents financial stability and wealth that is often associated with family and legacy. It signifies a time of abundance and security, where efforts culminate in long-lasting success. This card encourages you to value your roots and the support of your family and community.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Family commitment, stability in relationships, shared values.',
            'definition':
                'In a love reading, the Ten of Pentacles suggests a strong commitment to family and a stable, supportive relationship. It signifies a desire to build a future together and may indicate discussions about long-term plans or family matters. This card encourages you to cherish the connections that provide a solid foundation for love.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Long-term success, financial security, business legacy.',
            'definition':
                'In a career context, the Ten of Pentacles signifies long-term success and financial security. It represents the culmination of efforts leading to a stable career or business legacy. This card encourages you to think about the future and the impact of your work on future generations.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword': 'Spiritual legacy, family traditions, ancestral wisdom.',
            'definition':
                'Spiritually, the Ten of Pentacles signifies the importance of family traditions and the wisdom passed down through generations. It encourages you to connect with your roots and to honor the spiritual legacy of your ancestors. This card may represent a time to reflect on how your spiritual beliefs are shaped by your family history.',
          },
        },
      ),
      TarotCard(
        name: 'Page',
        image: 'assets/images/tarot/pageofpentacles.png',
        suit: 'Pentacles',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'New opportunities, ambition, study, exploration, practicality.',
            'definition':
                'The Page of Pentacles represents the beginning of a new venture or opportunity, often related to finance or career. It signifies ambition and a desire to learn and grow. This card encourages you to embrace new challenges with a practical approach and to be open to exploring new avenues for success.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'New relationships, exploring connections, youthful energy.',
            'definition':
                'In a love reading, the Page of Pentacles signifies the potential for new romantic opportunities or the exploration of existing connections. It encourages a practical approach to relationships, focusing on building a solid foundation for love. This card embodies youthful energy and excitement in matters of the heart.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'New job opportunity, apprenticeship, learning, ambition.',
            'definition':
                'In a career context, the Page of Pentacles indicates the potential for new job opportunities or a fresh start in your professional life. It signifies a willingness to learn and develop skills that can lead to long-term success. This card encourages you to stay ambitious and take practical steps toward your career goals.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Learning about spirituality, new insights, practical spirituality.',
            'definition':
                'Spiritually, the Page of Pentacles signifies a thirst for knowledge and a desire to explore new spiritual practices. It encourages you to seek new insights and to approach your spiritual journey with practicality. This card represents the beginning of a deeper understanding of your spiritual path.',
          },
        },
      ),
      TarotCard(
        name: 'Knight',
        image: 'assets/images/tarot/knightofpentacles.png',
        suit: 'Pentacles',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Hard work, responsibility, reliability, routine, determination.',
            'definition':
                'The Knight of Pentacles represents a dedicated and responsible approach to work and goals. It signifies hard work, routine, and the determination to see projects through to completion. This card encourages you to stay focused on your objectives and to appreciate the value of patience and persistence.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Reliable partner, commitment, steady progress in relationships.',
            'definition':
                'In a love reading, the Knight of Pentacles signifies a reliable and committed partner. It represents steady progress in relationships and a focus on building a strong foundation together. This card encourages you to appreciate the small, consistent efforts that contribute to a lasting partnership.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Commitment to work, diligent effort, slow but steady progress.',
            'definition':
                'In a career context, the Knight of Pentacles signifies a strong commitment to your work and a diligent approach to achieving your goals. It may indicate a time of steady progress and consistent effort that will lead to long-term success. This card encourages you to embrace your responsibilities and stay focused on the task at hand.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Practical spirituality, steady spiritual growth, commitment to beliefs.',
            'definition':
                'Spiritually, the Knight of Pentacles encourages a practical approach to your beliefs and practices. It signifies steady growth and a commitment to your spiritual journey. This card represents the importance of integrating spirituality into your daily life and maintaining a consistent practice.',
          },
        },
      ),
      TarotCard(
        name: 'Queen',
        image: 'assets/images/tarot/queenofpentacles.png',
        suit: 'Pentacles',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Nurturing, practicality, financial security, comfort, abundance.',
            'definition':
                'The Queen of Pentacles represents a nurturing and practical approach to life, particularly regarding finances and home. It signifies financial security and the ability to create a comfortable and supportive environment. This card encourages you to embrace your nurturing qualities and to take care of yourself and those around you.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Supportive partner, nurturing love, stability in relationships.',
            'definition':
                'In a love reading, the Queen of Pentacles signifies a supportive and nurturing partner. It represents stability and comfort in relationships, encouraging you to create a loving and supportive environment for your loved ones. This card signifies the importance of emotional and practical support in love.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Financial security, business acumen, nurturing leadership.',
            'definition':
                'In a career context, the Queen of Pentacles signifies financial security and success in business endeavors. It represents nurturing leadership and the ability to create a supportive workplace environment. This card encourages you to embrace your skills in managing resources and supporting others in their growth.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Nurturing your spiritual path, grounding in beliefs, abundance.',
            'definition':
                'Spiritually, the Queen of Pentacles encourages you to nurture your spiritual path and to ground your beliefs in practicality. It signifies abundance in your spiritual life and the importance of creating a supportive environment for your spiritual growth. This card reminds you to take care of your emotional and spiritual needs.',
          },
        },
      ),
      TarotCard(
        name: 'King',
        image: 'assets/images/tarot/kingofpentacles.png',
        suit: 'Pentacles',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Wealth, authority, stability, success, financial security.',
            'definition':
                'The King of Pentacles represents financial stability and authority in the material realm. It signifies success and the ability to manage resources effectively. This card encourages you to embrace your leadership qualities and to take responsibility for your financial and personal success.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Provider, stability in relationships, commitment, maturity.',
            'definition':
                'In a love reading, the King of Pentacles signifies a stable and committed partner who embodies maturity and responsibility. It represents the desire to build a secure and lasting relationship. This card encourages you to appreciate the stability and support that a mature partner can bring to your love life.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Success, leadership, financial acumen, authority in business.',
            'definition':
                'In a career context, the King of Pentacles signifies success and authority in your professional life. It represents strong leadership qualities and the ability to manage resources wisely. This card encourages you to take charge of your career and to strive for financial security and stability.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Mastery in spiritual practices, grounded beliefs, abundance in spirituality.',
            'definition':
                'Spiritually, the King of Pentacles signifies a mastery of your spiritual beliefs and practices. It encourages you to ground your spirituality in practicality and to appreciate the abundance that comes from a well-rounded spiritual life. This card represents the importance of stability and security in your spiritual journey.',
          },
        },
      ),
      // wands
      TarotCard(
        name: 'Ace',
        image: 'assets/images/tarot/aceofwands.png',
        suit: 'Wands',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'New beginnings, inspiration, creativity, potential, energy.',
            'definition':
                'The Ace of Wands signifies the start of a new venture or creative project. It represents a burst of inspiration and the potential for growth and success. This card encourages you to embrace your passions and take the initiative in pursuing your goals.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword': 'New passion, excitement, creative connections.',
            'definition':
                'In a love reading, the Ace of Wands signifies the spark of new passion or the beginning of an exciting romantic relationship. It encourages spontaneity and adventure in love, urging you to explore new connections or reignite the flame in an existing relationship.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'New opportunities, creativity in the workplace, entrepreneurial spirit.',
            'definition':
                'In a career context, the Ace of Wands represents new job opportunities or the start of a creative project. It signifies a time to take action and pursue your passions, encouraging you to embrace your entrepreneurial spirit and take bold steps toward your goals.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual awakening, new insights, creative expression.',
            'definition':
                'Spiritually, the Ace of Wands signifies a period of spiritual awakening and exploration. It encourages you to express your spirituality creatively and to embrace new insights that inspire personal growth and transformation.',
          },
        },
      ),
      TarotCard(
        name: 'Two',
        image: 'assets/images/tarot/twoofwands.png',
        suit: 'Wands',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Planning, future vision, decision-making, personal power.',
            'definition':
                'The Two of Wands signifies the contemplation of future possibilities and the need to make decisions regarding your path. It represents personal power and the ability to shape your destiny. This card encourages you to evaluate your options and take proactive steps toward your goals.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Partnership decisions, planning for the future, mutual growth.',
            'definition':
                'In a love reading, the Two of Wands signifies discussions about future plans within a relationship. It represents the importance of mutual growth and understanding in love, encouraging you to consider your options and envision your shared future.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Career planning, evaluating opportunities, strategic decisions.',
            'definition':
                'In a career context, the Two of Wands indicates a time for planning and evaluating job opportunities. It signifies the need to make strategic decisions about your professional path and to take action toward achieving your goals.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Exploring spiritual paths, making choices, vision for the future.',
            'definition':
                'Spiritually, the Two of Wands encourages you to explore different spiritual paths and consider the choices that resonate with you. It signifies a time for introspection and evaluating your beliefs as you envision your spiritual journey.',
          },
        },
      ),
      TarotCard(
        name: 'Three',
        image: 'assets/images/tarot/threeofwands.png',
        suit: 'Wands',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Expansion, foresight, exploration, waiting for results.',
            'definition':
                'The Three of Wands signifies a period of expansion and growth, where your efforts are beginning to bear fruit. It represents a time of exploration and the anticipation of results from your hard work. This card encourages you to maintain a broad perspective and to be open to new opportunities.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Expanding relationships, long-distance connections, partnership growth.',
            'definition':
                'In a love reading, the Three of Wands signifies the potential for expanding relationships or partnerships. It may indicate long-distance connections or the growth of a relationship that has a strong foundation. This card encourages you to explore new horizons in love.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Growth in career, future planning, exploring new opportunities.',
            'definition':
                'In a career context, the Three of Wands signifies growth and expansion in your professional life. It indicates the need to plan for the future and to explore new opportunities that align with your goals. This card encourages you to take calculated risks in your career.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual exploration, growth, anticipating new insights.',
            'definition':
                'Spiritually, the Three of Wands signifies a time of growth and exploration on your spiritual path. It encourages you to anticipate new insights and to remain open to experiences that can deepen your understanding of your beliefs.',
          },
        },
      ),
      TarotCard(
        name: 'Four',
        image: 'assets/images/tarot/fourofpentacles.png',
        suit: 'Wands',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Celebration, harmony, community, stability, homecoming.',
            'definition':
                'The Four of Wands signifies a time of celebration, stability, and harmony within your personal and community life. It represents milestones achieved and the importance of coming together with others. This card encourages you to appreciate the joy and support found in relationships and community.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Celebrating love, harmony in relationships, commitment.',
            'definition':
                'In a love reading, the Four of Wands signifies a time of celebration and joy within a relationship. It represents stability and harmony, indicating strong foundations and commitment. This card encourages you to celebrate your love and appreciate the supportive bonds you share.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Workplace harmony, celebrating achievements, supportive environment.',
            'definition':
                'In a career context, the Four of Wands signifies a harmonious workplace and the celebration of achievements. It represents a supportive environment where teamwork flourishes. This card encourages you to recognize the importance of collaboration and community in your professional life.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual celebration, community support, harmony in beliefs.',
            'definition':
                'Spiritually, the Four of Wands signifies a time of celebration within your spiritual community. It encourages you to appreciate the support and harmony found in shared beliefs and practices. This card represents the joy of connecting with others on your spiritual path.',
          },
        },
      ),
      TarotCard(
        name: 'Five',
        image: 'assets/images/tarot/fiveofwands.png',
        suit: 'Wands',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Conflict, competition, struggle, challenges, diversity of opinions.',
            'definition':
                'The Five of Wands signifies conflict, competition, or challenges that arise in various areas of life. It represents the diversity of opinions and the need to navigate differences. This card encourages you to embrace challenges as opportunities for growth and learning.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Competition for affection, misunderstandings, conflicts in relationships.',
            'definition':
                'In a love reading, the Five of Wands signifies conflicts or misunderstandings within a relationship. It may indicate competition for affection or differing opinions that need to be addressed. This card encourages open communication to resolve issues and foster understanding.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Workplace competition, challenges, diverse perspectives.',
            'definition':
                'In a career context, the Five of Wands signifies competition and challenges in the workplace. It represents the need to navigate diverse perspectives and conflicting ideas. This card encourages you to approach challenges with an open mind and to see them as opportunities for growth.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual conflicts, questioning beliefs, diverse perspectives.',
            'definition':
                'Spiritually, the Five of Wands signifies conflicts or challenges in your spiritual beliefs. It represents the questioning of ideas and the exploration of diverse perspectives. This card encourages you to embrace the journey of discovery and to engage with differing viewpoints.',
          },
        },
      ),
      TarotCard(
        name: 'Six',
        image: 'assets/images/tarot/sixofwands.png',
        suit: 'Wands',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Victory, success, recognition, confidence, achievement.',
            'definition':
                'The Six of Wands signifies a time of victory and success, where your hard work is recognized and celebrated. It represents confidence and the achievement of your goals, encouraging you to embrace your accomplishments and the support of those around you.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Recognition in love, celebration of relationship milestones, confidence in partnerships.',
            'definition':
                'In a love reading, the Six of Wands signifies recognition and celebration within a relationship. It indicates confidence and success in love, encouraging you to appreciate the milestones you\'ve achieved together and to embrace the support of your partner.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Professional success, recognition, leadership, achievement.',
            'definition':
                'In a career context, the Six of Wands signifies professional success and recognition for your efforts. It represents a time to take pride in your accomplishments and the possibility of stepping into a leadership role. This card encourages you to continue pursuing your goals with confidence.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual victory, recognition of growth, confidence in beliefs.',
            'definition':
                'Spiritually, the Six of Wands signifies a time of victory and recognition in your spiritual journey. It encourages you to celebrate your growth and the support you\'ve received from your spiritual community. This card represents confidence in your beliefs and a sense of accomplishment in your spiritual path.',
          },
        },
      ),
      TarotCard(
        name: 'Seven',
        image: 'assets/images/tarot/sevenofwands.png',
        suit: 'Wands',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Challenge, perseverance, standing your ground, defense, competition.',
            'definition':
                'The Seven of Wands signifies challenges and the need to defend your position. It represents perseverance in the face of competition or opposition, encouraging you to stand your ground and maintain your beliefs, even when faced with difficulties.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Defending your relationship, challenges in love, standing firm in commitments.',
            'definition':
                'In a love reading, the Seven of Wands indicates the need to defend your relationship against external challenges or criticism. It represents perseverance and the importance of standing firm in your commitments, encouraging open communication to navigate difficulties together.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Workplace challenges, competition, defending your ideas.',
            'definition':
                'In a career context, the Seven of Wands signifies challenges and competition in the workplace. It represents the need to defend your ideas or position against others. This card encourages you to stay resilient and assertive in pursuing your professional goals.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual challenges, defending beliefs, perseverance in faith.',
            'definition':
                'Spiritually, the Seven of Wands signifies challenges in maintaining your beliefs and values. It encourages you to stand firm in your spiritual convictions and to persevere through difficulties. This card represents the importance of defending your path and staying true to your inner self.',
          },
        },
      ),
      TarotCard(
        name: 'Eight',
        image: 'assets/images/tarot/eightofwands.png',
        suit: 'Wands',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword': 'Speed, action, movement, progress, swift changes.',
            'definition':
                'The Eight of Wands signifies a period of rapid movement and progress. It represents swift changes and the need to act quickly. This card encourages you to embrace the momentum and take advantage of opportunities as they arise.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Rapid developments, communication, swift changes in relationships.',
            'definition':
                'In a love reading, the Eight of Wands indicates rapid developments or changes in a relationship. It may signify exciting communication or the quick progression of feelings. This card encourages you to embrace the spontaneity and energy in your love life.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Fast-paced environment, swift decisions, new opportunities.',
            'definition':
                'In a career context, the Eight of Wands signifies a fast-paced work environment where quick decisions are necessary. It represents new opportunities and the need to act swiftly to capitalize on them. This card encourages you to stay adaptable and ready for change.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual growth, rapid insights, movement toward goals.',
            'definition':
                'Spiritually, the Eight of Wands signifies rapid growth and movement toward your spiritual goals. It encourages you to remain open to new insights and experiences that can accelerate your journey. This card represents the importance of staying aligned with your spiritual path.',
          },
        },
      ),
      TarotCard(
        name: 'Nine',
        image: 'assets/images/tarot/nineofwands.png',
        suit: 'Wands',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Resilience, perseverance, boundaries, endurance, challenges.',
            'definition':
                'The Nine of Wands signifies resilience and the need to persevere through challenges. It represents endurance and the importance of setting boundaries to protect your energy. This card encourages you to stay strong and keep pushing forward, even in difficult times.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Protecting your heart, resilience in relationships, overcoming challenges.',
            'definition':
                'In a love reading, the Nine of Wands indicates the need to protect your heart and set boundaries in a relationship. It represents resilience and the ability to overcome challenges together. This card encourages open communication to navigate difficulties and strengthen your bond.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Enduring challenges, perseverance in the workplace, protecting your position.',
            'definition':
                'In a career context, the Nine of Wands signifies enduring challenges and the need to protect your position or ideas in the workplace. It represents perseverance and resilience in the face of adversity. This card encourages you to stay determined and focused on your goals.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual resilience, setting boundaries, perseverance in faith.',
            'definition':
                'Spiritually, the Nine of Wands signifies resilience in your spiritual journey. It encourages you to set boundaries to protect your spiritual energy and to persevere through challenges. This card represents the importance of maintaining your faith and inner strength.',
          },
        },
      ),
      TarotCard(
        name: 'Ten',
        image: 'assets/images/tarot/tenofwands.png',
        suit: 'Wands',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Burdens, responsibility, overwhelm, hard work, completion.',
            'definition':
                'The Ten of Wands signifies a time of burdens and responsibilities that may feel overwhelming. It represents hard work and the completion of a cycle. This card encourages you to evaluate your commitments and consider whether it\'s time to lighten your load.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Emotional burdens, responsibilities in relationships, seeking balance.',
            'definition':
                'In a love reading, the Ten of Wands indicates emotional burdens or responsibilities within a relationship. It may signify the need to address feelings of overwhelm and seek balance. This card encourages open communication and shared responsibilities to alleviate stress.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Heavy workload, stress, completion of projects, evaluating responsibilities.',
            'definition':
                'In a career context, the Ten of Wands signifies a heavy workload or stress due to responsibilities. It represents the completion of projects and the need to evaluate your commitments. This card encourages you to seek support or delegate tasks to lighten your burden.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual burdens, completion of a cycle, releasing responsibilities.',
            'definition':
                'Spiritually, the Ten of Wands signifies spiritual burdens or responsibilities that may feel overwhelming. It encourages you to evaluate your spiritual commitments and consider releasing those that no longer serve you. This card represents the completion of a cycle and the opportunity for new beginnings.',
          },
        },
      ),
      TarotCard(
        name: 'Page',
        image: 'assets/images/tarot/pageofwands.png',
        suit: 'Wands',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Enthusiasm, exploration, creativity, new ideas, adventure.',
            'definition':
                'The Page of Wands signifies a youthful, enthusiastic energy focused on exploration and creativity. It represents the spark of new ideas and the excitement of embarking on new adventures. This card encourages you to embrace your passions and pursue your dreams with a playful spirit.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'New romantic interest, adventurous spirit, excitement in love.',
            'definition':
                'In a love reading, the Page of Wands indicates a new romantic interest or the rekindling of excitement in an existing relationship. It represents a playful and adventurous approach to love, encouraging you to explore your feelings and embrace spontaneity in your romantic life.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'New opportunities, creative projects, enthusiasm for work.',
            'definition':
                'In a career context, the Page of Wands signifies new opportunities and creative projects on the horizon. It represents enthusiasm and the desire to explore new paths. This card encourages you to take initiative and embrace your creative potential in your professional life.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword': 'Spiritual exploration, creativity, new insights.',
            'definition':
                'Spiritually, the Page of Wands signifies a time of exploration and creativity in your spiritual journey. It encourages you to embrace new insights and perspectives, as well as to pursue your spiritual passions with enthusiasm. This card represents the beginning of a new phase in your spiritual growth.',
          },
        },
      ),
      TarotCard(
        name: 'Knight',
        image: 'assets/images/tarot/knightofwands.png',
        suit: 'Wands',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword': 'Action, adventure, impulsiveness, courage, movement.',
            'definition':
                'The Knight of Wands signifies a bold and adventurous spirit, characterized by action and movement. It represents a willingness to take risks and pursue your passions with enthusiasm. This card encourages you to embrace new experiences, even if they require stepping outside your comfort zone.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Passion, spontaneity, adventurous relationships, flirtation.',
            'definition':
                'In a love reading, the Knight of Wands indicates a passionate and adventurous energy in your romantic life. It may signify flirtation or a desire for spontaneous experiences with a partner. This card encourages you to embrace the excitement of love and to be open to new connections.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword': 'Bold decisions, entrepreneurial spirit, taking risks.',
            'definition':
                'In a career context, the Knight of Wands signifies bold decisions and an entrepreneurial spirit. It represents the drive to pursue your goals with enthusiasm and courage. This card encourages you to take calculated risks and to follow your passions, even if they lead you in unexpected directions.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual exploration, dynamic growth, embracing change.',
            'definition':
                'Spiritually, the Knight of Wands signifies dynamic growth and exploration in your spiritual journey. It encourages you to embrace change and to pursue your spiritual passions with courage. This card represents the importance of staying open to new experiences that can enrich your spiritual path.',
          },
        },
      ),
      TarotCard(
        name: 'Queen',
        image: 'assets/images/tarot/queenofwands.png',
        suit: 'Wands',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword': 'Confidence, charisma, creativity, warmth, leadership.',
            'definition':
                'The Queen of Wands signifies a confident and charismatic energy, characterized by creativity and warmth. It represents the ability to inspire others and lead with passion. This card encourages you to embrace your creative talents and to trust in your ability to manifest your desires.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Passionate relationships, nurturing love, magnetic attraction.',
            'definition':
                'In a love reading, the Queen of Wands indicates a passionate and nurturing energy in your romantic life. It signifies magnetic attraction and the ability to create a warm and loving environment for your partner. This card encourages you to express your feelings and to embrace your role as a loving partner.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword': 'Leadership, creative projects, confidence in work.',
            'definition':
                'In a career context, the Queen of Wands signifies leadership and the pursuit of creative projects. It represents confidence in your abilities and the desire to inspire others in the workplace. This card encourages you to take initiative and to embrace your role as a creative leader.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual confidence, creative expression, inspiration.',
            'definition':
                'Spiritually, the Queen of Wands signifies confidence and inspiration in your spiritual journey. It encourages you to express your spiritual beliefs creatively and to embrace your unique path. This card represents the importance of trusting in your inner wisdom and intuition.',
          },
        },
      ),
      TarotCard(
        name: 'King',
        image: 'assets/images/tarot/kingofwands.png',
        suit: 'Wands',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Leadership, vision, determination, charisma, creativity.',
            'definition':
                'The King of Wands signifies a powerful and charismatic energy, characterized by leadership and vision. It represents the ability to inspire others and to pursue your goals with determination and creativity. This card encourages you to take charge of your path and to embrace your role as a leader.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Passionate leadership, inspiring partnerships, commitment.',
            'definition':
                'In a love reading, the King of Wands indicates a passionate and inspiring energy in your romantic life. It represents a committed and dynamic partnership, where both individuals support each other\'s goals. This card encourages you to take a leadership role in your relationship and to nurture your connection with passion.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                ' Visionary leadership, entrepreneurial spirit, determination.',
            'definition':
                'In a career context, the King of Wands signifies visionary leadership and an entrepreneurial spirit. It represents determination and the ability to inspire others in the workplace. This card encourages you to pursue your professional goals with confidence and to embrace opportunities for growth and innovation.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword': 'Spiritual leadership, creative vision, personal power.',
            'definition':
                'Spiritually, the King of Wands signifies spiritual leadership and a strong creative vision. It encourages you to embrace your personal power and to inspire others on their spiritual paths. This card represents the importance of following your spiritual calling with passion and determination.',
          },
        },
      ),
      // swords
      TarotCard(
        name: 'Ace',
        image: 'assets/images/tarot/aceofswords.png',
        suit: 'Swords',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Clarity, truth, new ideas, mental clarity, breakthroughs.',
            'definition':
                'The Ace of Swords represents a new beginning in the realm of thoughts, ideas, and communication. It signifies mental clarity, truth, and the potential for breakthroughs. This card encourages you to embrace new insights and to express your thoughts with confidence.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Honest communication, clarity in relationships, new perspectives.',
            'definition':
                'In a love reading, the Ace of Swords indicates a need for honest communication and clarity in your relationships. It may signify the beginning of a new perspective or understanding with your partner. This card encourages you to express your feelings openly and to seek truth in your romantic life.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword': 'New ideas, intellectual pursuits, decision-making.',
            'definition':
                'In a career context, the Ace of Swords signifies new ideas and intellectual pursuits. It represents the potential for breakthroughs in your work and the ability to make clear decisions. This card encourages you to embrace new opportunities and to trust your intuition in your professional life.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword': 'Truth-seeking, spiritual clarity, mental awakening.',
            'definition':
                'Spiritually, the Ace of Swords represents a quest for truth and clarity in your spiritual journey. It encourages you to seek deeper understanding and to trust your inner wisdom. This card signifies a mental awakening and the potential for new insights into your spiritual beliefs.',
          },
        },
      ),
      TarotCard(
        name: 'Two',
        image: 'assets/images/tarot/twoofswords.png',
        suit: 'Swords',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword': 'Indecision, stalemate, choices, blocked emotions.',
            'definition':
                'The Two of Swords signifies a state of indecision or stalemate, where choices need to be made. It represents a blockage of emotions and a struggle to see clearly. This card encourages you to confront your feelings and to make decisions rather than remaining stuck.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Difficult choices, indecision in relationships, emotional barriers.',
            'definition':
                'In a love reading, the Two of Swords indicates difficulties in making choices regarding relationships. It may signify emotional barriers that prevent clear communication with your partner. This card encourages you to confront your feelings and to open up about any conflicts or indecision.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword': 'Decision-making, weighing options, potential conflict.',
            'definition':
                'In a career context, the Two of Swords represents the need to make important decisions regarding your professional path. It signifies weighing options and the potential for conflict. This card encourages you to take the time to reflect and consider all aspects before making a choice.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword': 'Inner conflict, spiritual choices, need for clarity.',
            'definition':
                'Spiritually, the Two of Swords signifies inner conflict and the need to confront spiritual choices. It encourages you to seek clarity and to address any emotional barriers that may be hindering your spiritual growth. This card represents the importance of finding balance within yourself.',
          },
        },
      ),
      TarotCard(
        name: 'Three',
        image: 'assets/images/tarot/threeofswords.png',
        suit: 'Swords',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword': 'Heartbreak, sorrow, grief, emotional pain, betrayal.',
            'definition':
                'The Three of Swords signifies heartbreak and emotional pain, often stemming from betrayal or loss. It represents feelings of sorrow and grief that can arise from difficult situations. This card encourages you to acknowledge your emotions and to allow yourself to heal.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword': 'Heartbreak, betrayal, loss, emotional turmoil.',
            'definition':
                'In a love reading, the Three of Swords indicates heartbreak or betrayal in a relationship. It represents emotional turmoil and the need to confront feelings of pain. This card encourages you to allow yourself to grieve and to seek healing after difficult experiences in love.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword': 'Conflict, disappointment, setbacks.',
            'definition':
                'In a career context, the Three of Swords signifies conflict and disappointment, possibly resulting from betrayal or setbacks in the workplace. It encourages you to address any issues openly and to seek resolution rather than allowing pain to linger.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword': 'Healing, emotional release, spiritual growth.',
            'definition':
                'Spiritually, the Three of Swords signifies a time of healing and emotional release. It encourages you to confront your pain and to allow it to guide your spiritual growth. This card represents the importance of acknowledging sorrow as part of the journey toward enlightenment.',
          },
        },
      ),
      TarotCard(
        name: 'Four',
        image: 'assets/images/tarot/fourofswords.png',
        suit: 'Swords',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword': 'Rest, recovery, contemplation, introspection.',
            'definition':
                'The Four of Swords signifies a time of rest and recovery. It represents the need for introspection and contemplation, allowing yourself to recharge mentally and emotionally. This card encourages you to take a break and to focus on self-care.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword': 'Reflection, taking a break, healing in relationships.',
            'definition':
                'In a love reading, the Four of Swords indicates a need for reflection or a break in a relationship. It may signify a time for healing and introspection, encouraging you to consider what you truly want. This card reminds you that rest can lead to renewed clarity in love.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword': 'Time out, recovery, reassessment.',
            'definition':
                'In a career context, the Four of Swords signifies a time out for recovery and reassessment. It encourages you to take a break from work to recharge and reflect on your goals. This card reminds you of the importance of mental health and well-being in your professional life.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword': 'Meditation, inner peace, self-reflection.',
            'definition':
                'Spiritually, the Four of Swords signifies a time of meditation and self-reflection. It encourages you to seek inner peace and to take time for spiritual recovery. This card represents the importance of pausing to reconnect with your inner self.',
          },
        },
      ),
      TarotCard(
        name: 'Five',
        image: 'assets/images/tarot/fiveofswords.png',
        suit: 'Swords',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword': 'Conflict, defeat, dishonor, betrayal, tension.',
            'definition':
                'The Five of Swords signifies conflict and tension, often resulting in feelings of defeat or betrayal. It represents the negative consequences of dishonorable actions and the need to choose your battles wisely. This card encourages you to consider the impact of conflict on your relationships.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Conflict, betrayal, dishonesty, tension in relationships.',
            'definition':
                'In a love reading, the Five of Swords indicates conflict and tension, possibly arising from dishonesty or betrayal in a relationship. It encourages you to address issues openly and to consider whether the relationship is worth the struggle. This card warns against engaging in unhealthy competition or manipulation in love.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword': 'Workplace conflict, tension, defeat.',
            'definition':
                'In a career context, the Five of Swords signifies workplace conflict and tension. It may represent a situation where dishonorable actions lead to feelings of defeat. This card encourages you to address conflicts directly and to avoid engaging in cutthroat behavior that can harm your professional relationships.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Inner conflict, spiritual dishonesty, reevaluating values.',
            'definition':
                'Spiritually, the Five of Swords signifies inner conflict and the need to reevaluate your values and beliefs. It encourages you to confront any dishonesty or negative influences in your spiritual journey. This card serves as a reminder to seek inner peace and authenticity in your spiritual path.',
          },
        },
      ),
      TarotCard(
        name: 'Six',
        image: 'assets/images/tarot/sixofswords.png',
        suit: 'Swords',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword': 'Transition, movement, travel, change, healing.',
            'definition':
                'The Six of Swords signifies a transition or journey from a difficult situation to a more positive one. It often represents leaving behind troubles and moving toward calmer waters. This card encourages healing and personal growth through change.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword': 'Moving on, healing, travel in relationships.',
            'definition':
                'In a love reading, the Six of Swords indicates moving on from a challenging relationship or situation. It suggests healing and finding peace after turmoil. This card encourages you to leave behind what no longer serves you in love and to embrace new beginnings.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword': 'Career transition, moving forward, change of scenery.',
            'definition':
                'In a career context, the Six of Swords signifies a transition in your professional life, such as a job change or a move to a new environment. It encourages you to embrace this change as an opportunity for growth and healing.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Spiritual journey, personal growth, leaving the past behind.',
            'definition':
                'Spiritually, the Six of Swords represents a journey of personal growth and transformation. It encourages you to leave behind old beliefs or patterns that no longer serve you and to seek deeper understanding and healing in your spiritual path.',
          },
        },
      ),
      TarotCard(
        name: 'Seven',
        image: 'assets/images/tarot/sevenofswords.png',
        suit: 'Swords',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword': 'Deception, strategy, stealth, taking risks, betrayal.',
            'definition':
                'The Seven of Swords signifies deception, dishonesty, or betrayal. It often represents the need for strategy and careful planning when faced with challenges. This card encourages you to be cautious and to evaluate the intentions of those around you.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword': 'Dishonesty, hidden motives, cautiousness.',
            'definition':
                'In a love reading, the Seven of Swords indicates potential dishonesty or hidden motives in a relationship. It encourages you to be cautious and to communicate openly with your partner to uncover any underlying issues.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword': 'Strategic planning, risk-taking, potential betrayal.',
            'definition':
                'In a career context, the Seven of Swords signifies the need for strategic planning and careful decision-making. It may also suggest potential betrayal or dishonesty in the workplace. This card encourages you to be vigilant and to assess the motivations of colleagues.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Reevaluation of values, self-deception, inner conflict.',
            'definition':
                'Spiritually, the Seven of Swords signifies the need to reevaluate your beliefs and values. It encourages you to confront any self-deception or inner conflict that may hinder your spiritual growth. This card serves as a reminder to seek authenticity and honesty within yourself.',
          },
        },
      ),
      TarotCard(
        name: 'Eight',
        image: 'assets/images/tarot/eightofswords.png',
        suit: 'Swords',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Restriction, confusion, feeling trapped, self-imposed limitations.',
            'definition':
                'The Eight of Swords signifies feelings of restriction and confusion, often stemming from self-imposed limitations. It represents a sense of being trapped by circumstances or thoughts. This card encourages you to recognize your power to change your situation.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Feeling trapped, fear of vulnerability, confusion in relationships.',
            'definition':
                'In a love reading, the Eight of Swords indicates feelings of being trapped or restricted in a relationship. It may suggest fear of vulnerability or confusion about your partner\'s intentions. This card encourages you to communicate openly and to seek clarity in love.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword': 'Feeling stuck, confusion, self-doubt.',
            'definition':
                'In a career context, the Eight of Swords signifies feelings of being stuck or restricted in your professional life. It may represent self-doubt or confusion about your path. This card encourages you to recognize that you have the power to change your circumstances and to seek new opportunities.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword':
                'Inner conflict, self-imposed barriers, need for clarity.',
            'definition':
                'Spiritually, the Eight of Swords represents inner conflict and self-imposed barriers that hinder your growth. It encourages you to seek clarity and to confront any fears or limitations that may be holding you back from your spiritual journey.',
          },
        },
      ),
      TarotCard(
        name: 'Nine',
        image: 'assets/images/tarot/nineofswords.png',
        suit: 'Swords',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword': 'Anxiety, nightmares, mental anguish, fear, stress.',
            'definition':
                'The Nine of Swords signifies anxiety and mental anguish, often manifesting as fear or stress. It represents the burden of worries and the impact of negative thoughts. This card encourages you to confront your fears and seek support for your mental well-being.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword':
                'Anxiety in relationships, fear of loss, sleepless nights.',
            'definition':
                'In a love reading, the Nine of Swords indicates anxiety and worry in a relationship. It may represent fears of loss or betrayal that keep you up at night. This card encourages you to communicate openly with your partner and to address any underlying issues.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword':
                'Work-related stress, anxiety about the future, sleepless nights.',
            'definition':
                'In a career context, the Nine of Swords signifies work-related stress and anxiety about the future. It may represent sleepless nights spent worrying about your job or career path. This card encourages you to seek support and to take steps to alleviate your stress.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword': 'Fear, self-doubt, need for healing.',
            'definition':
                'Spiritually, the Nine of Swords signifies fear and self-doubt that may hinder your spiritual growth. It encourages you to confront your fears and to seek healing through self-reflection and support from others.',
          },
        },
      ),
      TarotCard(
        name: 'Ten',
        image: 'assets/images/tarot/tenofswords.png',
        suit: 'Swords',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword': 'Endings, betrayal, loss, defeat, transformation.',
            'definition':
                'The Ten of Swords signifies painful endings, betrayal, or loss. It represents a situation where one has hit rock bottom, often leading to transformation and renewal. This card encourages you to let go of what no longer serves you and to embrace new beginnings.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword': 'Painful endings, betrayal in relationships, closure.',
            'definition':
                'In a love reading, the Ten of Swords indicates painful endings or betrayal in a relationship. It may signify the need for closure and healing after a difficult experience. This card encourages you to release the past and to make way for new love.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword': 'Job loss, failure, transformation.',
            'definition':
                'In a career context, the Ten of Swords signifies job loss or failure, often leading to a sense of defeat. However, it also represents the potential for transformation and new beginnings. This card encourages you to embrace change and to seek new opportunities.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword': 'Transformation, letting go, rebirth.',
            'definition':
                'Spiritually, the Ten of Swords signifies a time of transformation and letting go of old patterns or beliefs. It encourages you to embrace the process of rebirth and renewal, recognizing that endings can lead to new beginnings on your spiritual journey.',
          },
        },
      ),
      TarotCard(
        name: 'Page',
        image: 'assets/images/tarot/pageofswords.png',
        suit: 'Swords',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Curiosity, new ideas, mental energy, communication, vigilance.',
            'definition':
                'The Page of Swords signifies a curious and energetic mindset. This card often represents new ideas, mental challenges, and a desire for knowledge. It encourages you to be open-minded and to communicate your thoughts clearly.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword': 'Communication, new ideas, exploration.',
            'definition':
                'In a love reading, the Page of Swords indicates a time of exploration and open communication in relationships. It encourages you to express your thoughts and feelings honestly, fostering a deeper connection with your partner.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword': 'New ideas, mental challenges, communication.',
            'definition':
                'In a career context, the Page of Swords signifies new opportunities and the exploration of ideas. It encourages you to think critically and communicate effectively, as your mental agility can lead to new paths and advancements in your career.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword': 'Intellectual curiosity, truth-seeking, mental clarity.',
            'definition':
                'Spiritually, the Page of Swords represents a desire for knowledge and understanding. It encourages you to seek truth and clarity in your beliefs and to remain open to new perspectives on your spiritual journey.',
          },
        },
      ),
      TarotCard(
        name: 'Knight',
        image: 'assets/images/tarot/knightofswords.png',
        suit: 'Swords',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Action, ambition, assertiveness, intellect, communication.',
            'definition':
                'The Knight of Swords signifies decisive action and ambition. This card represents a strong desire to achieve goals through intellect and clear communication. It encourages you to be assertive and to pursue your ambitions with confidence.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword': 'Direct communication, assertiveness, passion.',
            'definition':
                'In a love reading, the Knight of Swords indicates direct and passionate communication in relationships. It encourages you to express your feelings assertively and to be proactive in pursuing love and connection.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword': 'Ambition, action-oriented, assertiveness.',
            'definition':
                'In a career context, the Knight of Swords signifies an ambitious approach to your work. It encourages you to take decisive action and to pursue your goals with confidence and determination.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword': 'Intellect, truth-seeking, assertiveness.',
            'definition':
                'Spiritually, the Knight of Swords represents a quest for truth and understanding. It encourages you to assertively seek knowledge and to challenge any beliefs that may be holding you back from spiritual growth.',
          },
        },
      ),
      TarotCard(
        name: 'Queen',
        image: 'assets/images/tarot/queenofswords.png',
        suit: 'Swords',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Independence, intelligence, clarity, direct communication, intuition.',
            'definition':
                'The Queen of Swords signifies independence and intellectual clarity. This card represents someone who is perceptive and able to communicate effectively. It encourages you to trust your intuition and to approach situations with honesty and fairness.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword': 'Clear communication, independence, wisdom.',
            'definition':
                'In a love reading, the Queen of Swords indicates the importance of clear communication and honesty in relationships. It encourages you to express your needs and desires openly while maintaining your independence.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword': 'Leadership, clarity, decision-making.',
            'definition':
                'In a career context, the Queen of Swords signifies strong leadership and decision-making abilities. It encourages you to use your intellect and clarity to navigate challenges and to lead with confidence.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword': 'Intuition, wisdom, clarity of thought.',
            'definition':
                'Spiritually, the Queen of Swords represents the pursuit of truth and wisdom. It encourages you to trust your intuition and to seek clarity in your beliefs and spiritual practices.',
          },
        },
      ),
      TarotCard(
        name: 'King',
        image: 'assets/images/tarot/kingofswords.png',
        suit: 'Swords',
        definitions: {
          QuestionType.getAllTypes()[0]: {
            'keyword':
                'Authority, intellect, strategy, leadership, clear communication.',
            'definition':
                'The King of Swords signifies authority and intellectual mastery. This card represents someone who is a strategic thinker and communicates with clarity and authority. It encourages you to approach situations with logic and reason.',
          },
          QuestionType.getAllTypes()[1]: {
            'keyword': 'Clear communication, authority, fairness.',
            'definition':
                'In a love reading, the King of Swords indicates the need for clear communication and fairness in relationships. It encourages you to approach love with honesty and integrity, making decisions based on logic and reason.',
          },
          QuestionType.getAllTypes()[2]: {
            'keyword': 'Leadership, strategic thinking, decision-making.',
            'definition':
                'In a career context, the King of Swords signifies strong leadership and strategic decision-making abilities. It encourages you to use your intellect and authority to navigate professional challenges effectively.',
          },
          QuestionType.getAllTypes()[3]: {
            'keyword': 'Truth-seeking, mental clarity, authority.',
            'definition':
                'Spiritually, the King of Swords represents a pursuit of truth and understanding. It encourages you to seek mental clarity and to approach your spiritual journey with authority and confidence.',
          },
        },
      ),
    ];
  }

  static TarotCard drawRandomCard() {
    final random = Random();
    final allCards = getAllCards();
    return allCards[random.nextInt(allCards.length)];
  }
}
