import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_tagalog/models/lesson.dart';
import 'package:learn_tagalog/models/lessoncontent.dart';
import 'package:learn_tagalog/models/questions.dart';
import 'package:learn_tagalog/models/topic.dart';
import 'package:learn_tagalog/number_icons_icons.dart';
import 'package:learn_tagalog/weekday_icons_icons.dart';

class Utils {
  static List<Topic> getMockedCategories() {
    return [
      //TODO: Fill with lesson content
      Topic(
        name: 'Alphabet',
        icon: FontAwesomeIcons.wordpress,
        color: Color.fromRGBO(124, 180, 2, 1.0),
        backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
        lessons: [
          Lesson(
            name: 'Lesson One',
            icon: FontAwesomeIcons.pencilAlt,
            color: Color.fromRGBO(124, 180, 2, 1.0),
            backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
            lessonContent: [
              LessonContent(
                tagalogWord: 'Ah',
                engWord: 'A',
                icon: FontAwesomeIcons.monument,
                audio: 'assets/audio/Ah.mp3',
                color: Colors.yellow,
                type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Ba',
                  engWord: 'B',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Ba.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Ka',
                  engWord: 'C',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Ka.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Da',
                  engWord: 'D',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Da.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Eh',
                  engWord: 'E',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Eh.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Ga',
                  engWord: 'G',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Ga.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Ha',
                  engWord: 'H',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Ha.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'e',
                  engWord: 'I',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/E.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'La',
                  engWord: 'L',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/La.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Ma',
                  engWord: 'M',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Ma.mp3',
                  color: Colors.yellow,
                  type: 'word'
              )
            ]
          ),
          Lesson(
            name: 'Lesson Two',
            icon: FontAwesomeIcons.bookOpen,
            color: Color.fromRGBO(124, 180, 2, 1.0),
            backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
            lessonContent: [
              LessonContent(
                  tagalogWord: 'Na',
                  engWord: 'N',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Na.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Nga',
                  engWord: 'NG',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Nga.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Oh',
                  engWord: 'O',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Oh.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Pah',
                  engWord: 'P',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Pah.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Ra',
                  engWord: 'R',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Rah.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Sa',
                  engWord: 'S',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Sa.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Ta',
                  engWord: 'T',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Ta.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Ooh',
                  engWord: 'U',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/ooh.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Wa',
                  engWord: 'W',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Wa.mp3',
                  color: Colors.yellow,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Ya',
                  engWord: 'Y',
                  icon: FontAwesomeIcons.monument,
                  audio: 'assets/audio/Ya.mp3',
                  color: Colors.yellow,
                  type: 'word'
              )
            ]
          ),
          Lesson(
            name: 'Lesson Three',
            icon: FontAwesomeIcons.addressBook,
            color: Color.fromRGBO(124, 180, 2, 1.0),
            backgroundColor: Color.fromRGBO(171, 236, 49, 1.0),
          ),

        ],
      ),
      Topic(
        name: 'Numbers',
        icon: FontAwesomeIcons.personBooth,
        color: Color.fromRGBO(0, 149, 85, 1.0),
        backgroundColor: Colors.green[400],
        lessons: [
          Lesson(
              name: 'Lesson One',
              icon: FontAwesomeIcons.sortAmountUp,
              color: Color.fromRGBO(0, 149, 85, 1.0),
              backgroundColor: Colors.green[400],
              lessonContent: [
                LessonContent(
                  tagalogWord: 'Isa',
                  engWord: 'One',
                  icon: FontAwesomeIcons.diceOne,
                  color: Colors.white,
                  audio: 'assets/audio/Isa.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Daliwa',
                  engWord: 'Two',
                  icon: FontAwesomeIcons.diceTwo,
                  color: Colors.white,
                  audio: 'assets/audio/Daliwa.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Tatlo',
                  engWord: 'Three',
                  icon: FontAwesomeIcons.diceThree,
                  color: Colors.white,
                  audio: 'assets/audio/Tatlo.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Apat',
                  engWord: 'Four',
                  icon: FontAwesomeIcons.diceFour,
                  color: Colors.white,
                  audio: 'assets/audio/Apat.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Lima',
                  engWord: 'Five',
                  icon: FontAwesomeIcons.diceFive,
                  color: Colors.white,
                  audio: 'assets/audio/Lima.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Anim',
                  engWord: 'Six',
                  icon: FontAwesomeIcons.diceSix,
                  color: Colors.white,
                  audio: 'assets/audio/Anim.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Pito',
                  engWord: 'Seven',
                  icon: Icons.seven_mp,
                  color: Colors.green,
                  audio: 'assets/audio/Pito.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Walo',
                  engWord: 'Eight',
                  icon: Icons.eight_mp,
                  color: Colors.white,
                  audio: 'assets/audio/Walo.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Siyam',
                  engWord: 'Nine',
                  icon: Icons.nine_mp,
                  color: Colors.blue,
                  audio: 'assets/audio/Siyam.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Sampu',
                  engWord: 'Ten',
                  icon: Icons.ten_mp,
                  color: Colors.white,
                  audio: 'assets/audio/Sampu.mp3',
                  type: 'word',
                )
              ]),
          Lesson(
            name: 'Lesson Two',
            icon: FontAwesomeIcons.listOl,
            color: Color.fromRGBO(0, 149, 85, 1.0),
            backgroundColor: Colors.green[400],
            lessonContent: [
              LessonContent(
                tagalogWord: 'Zero',
                engWord: 'Zero',
                icon: Icons.exposure_zero,
                color: Colors.white,
                audio: 'assets/audio/zero.mp3',
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Sampu',
                engWord: 'Ten',
                icon: Icons.ten_mp,
                color: Colors.white,
                audio: 'assets/audio/Sampu.mp3',
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Bente',
                engWord: 'Twenty',
                icon: Icons.twenty_mp,
                color: Colors.white,
                audio: 'assets/audio/Bente.mp3',
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Tatlong Ko',
                engWord: 'Thirty',
                icon: NumberIcons.thirty,
                color: Colors.white,
                audio: 'assets/audio/Tatlong Ko.mp3',
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Apatnapu',
                engWord: 'Forty',
                icon: NumberIcons.forty,
                color: Colors.white,
                audio: 'assets/audio/Apatnapu.mp3',
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Limango',
                engWord: 'Fifty',
                icon: NumberIcons.fifty,
                color: Colors.white,
                audio: 'assets/audio/Limango.mp3',
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Animnapo',
                engWord: 'Sixty',
                icon: NumberIcons.sixty,
                color: Colors.white,
                audio: 'assets/audio/Animnapo.mp3',
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Pitungpo',
                engWord: 'Seventy',
                icon: NumberIcons.birthday,
                color: Colors.white,
                audio: 'assets/audio/Pitungpo.mp3',
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Walungpo',
                engWord: 'Eighty',
                icon: NumberIcons.eighty,
                color: Colors.white,
                audio: 'assets/audio/Walungpo.mp3',
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Siyamnapo',
                engWord: 'Ninety',
                icon: NumberIcons.ninety,
                color: Colors.white,
                audio: 'assets/audio/Siyamnapo.mp3',
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Isang Daan',
                engWord: 'One Hundred',
                icon: Icons.money,
                color: Colors.green,
                audio: 'assets/audio/Isang Daan.mp3',
                type: 'word',
              ),
              LessonContent(
                tagalogWord: 'Isang Libo',
                engWord: 'One thousand',
                icon: Icons.one_k,
                color: Colors.white,
                audio: 'assets/audio/Isang Libo.mp3',
                type: 'word',
              ),
            ],
          ),
          Lesson(
              name: 'Lesson Three',
              icon: FontAwesomeIcons.calculator,
              color: Color.fromRGBO(0, 149, 85, 1.0),
              backgroundColor: Colors.green[400],
              lessonContent: [
                LessonContent(
                  tagalogWord: 'Isang saging',
                  engWord: 'a banana',
                  icon: FontAwesomeIcons.carrot,
                  color: Colors.yellow,
                  audio: 'assets/audio/Isang saging.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Dalawang orange',
                  engWord: 'Two oranges',
                  icon: FontAwesomeIcons.solidLemon,
                  color: Colors.orange,
                  audio: 'assets/audio/Dalawang orange.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Tatlong mansanas',
                  engWord: 'Three apples',
                  icon: FontAwesomeIcons.apple,
                  color: Colors.red,
                  audio: 'assets/audio/Tatlong mansanas.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Apat na tao',
                  engWord: 'Four people',
                  icon: Icons.group_rounded,
                  color: Colors.green,
                  audio: 'assets/audio/Apat na tao.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Limang pussa',
                  engWord: 'Five cats',
                  icon: FontAwesomeIcons.cat,
                  color: Colors.white,
                  audio: 'assets/audio/Limang pussa.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Anim na aso',
                  engWord: 'Six dogs',
                  icon: FontAwesomeIcons.dog,
                  color: Colors.brown,
                  audio: 'assets/audio/Anim na aso.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Itong tao',
                  engWord: 'Seven people',
                  icon: Icons.seven_mp,
                  color: Colors.white,
                  audio: 'assets/audio/Itong tao.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Walong pirasong tsokolate',
                  engWord: 'Seventy',
                  icon: Icons.seven_mp,
                  color: Colors.white,
                  audio: 'assets/audio/walong pirasong tsokolate.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Siyam na kotse',
                  engWord: 'Nine cars',
                  icon: Icons.car_repair,
                  color: Colors.white,
                  audio: 'assets/audio/Siyam na kotse.mp3',
                  type: 'word',
                ),
                LessonContent(
                  tagalogWord: 'Sampung aso',
                  engWord: 'Ten dogs',
                  icon: FontAwesomeIcons.dog,
                  color: Colors.white,
                  audio: 'assets/audio/Sampung aso.mp3',
                  type: 'word',
                ),
              ]),
          Lesson(
              name: 'Lesson Four',
              icon: FontAwesomeIcons.sortNumericDown,
              color: Color.fromRGBO(0, 149, 85, 1.0),
              backgroundColor: Colors.green[400],
              lessonContent: [
                LessonContent(
                  tagalogWord: 'Labing isang itik',
                  engWord: 'Eleven ducks',
                  icon: Icons.seven_mp,
                  color: Colors.white,
                  audio: 'assets/audio/Labing isang itik.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Dalawangput anim na tao',
                  engWord: 'Twenty Six people',
                  icon: Icons.seven_mp,
                  color: Colors.white,
                  audio: 'assets/audio/Dalawangput anim na tao.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'tatlumpu\'t siyam na taong gulang',
                  engWord: '39 years old',
                  icon: Icons.seven_mp,
                  color: Colors.white,
                  audio: 'assets/audio/tatlumpu\'t siyam na taong gulang.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Apat na pu’t tatlo ng lapis',
                  engWord: 'Forty three pencils',
                  icon: Icons.seven_mp,
                  color: Colors.white,
                  audio: 'assets/audio/Apat na pu’t tatlo ng lapis.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Limang pu\'t limang pahina',
                  engWord: 'Fifty five pages',
                  icon: Icons.seven_mp,
                  color: Colors.white,
                  audio: 'assets/audio/Limang pu\'t limang pahina.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Anim na salita',
                  engWord: 'Six words',
                  icon: Icons.seven_mp,
                  color: Colors.white,
                  audio: 'assets/audio/Anim na salita.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Pitong pu\'t apat na taong gulang',
                  engWord: '74 years old',
                  icon: Icons.seven_mp,
                  color: Colors.white,
                  audio: 'assets/audio/Pitong pu\'t apat na taong gulang.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Walongput tatlong taon na nakaraan',
                  engWord: '83 years old',
                  icon: Icons.seven_mp,
                  color: Colors.white,
                  audio: 'assets/audio/Walongput tatlong taon na nakaraan.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Siyamnaput walong tao',
                  engWord: '98 people',
                  icon: Icons.seven_mp,
                  color: Colors.white,
                  audio: 'assets/audio/Siyamnaput walong tao.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Isang Daan at apat na pung salita',
                  engWord: '140 pages',
                  icon: Icons.book,
                  color: Colors.white,
                  audio: 'assets/audio/Isang Daan at apat na pung salita.mp3',
                  type: 'phrase',
                ),
              ]),
          Lesson(
            name: 'Lesson Five',
            icon: FontAwesomeIcons.pencilRuler,
            color: Color.fromRGBO(0, 149, 85, 1.0),
            backgroundColor: Colors.green[400],
            lessonContent: [
              LessonContent(
                tagalogWord: 'Si Megan ay dalawang pusa',
                engWord: 'Megan has 2 cats',
                icon: FontAwesomeIcons.cat,
                color: Colors.white,
                audio: 'assets/audio/Si Megan ay dalawang pusa.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Si Amber ay may tatlong crayola',
                engWord: 'Amber has 3 crayons',
                icon: FontAwesomeIcons.pencilAlt,
                color: Colors.yellow,
                audio: 'assets/audio/Si Amber ay may tatlong crayola.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'May limang piso si Max',
                engWord: 'Max has 5 pesos',
                icon: Icons.attach_money,
                color: Colors.white,
                audio: 'assets/audio/May limang piso si Max.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Si Ronald ay limampu\'t limang taong gulang',
                engWord: 'Ronald is 55 years old',
                icon: Icons.cake,
                color: Colors.white,
                audio:
                    'assets/audio/Si Ronald ay limampu\'t limang taong gulang.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Ako ay may tatlong pusa at isang aso',
                engWord: 'I have 3 cats and one dog',
                icon: Icons.pets,
                color: Colors.grey,
                audio: 'assets/audio/Ako ay may tatlong pusa at isang aso.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Ako ay apat na put daliwang golang',
                engWord: 'I am 42 years old',
                icon: Icons.person,
                color: Colors.white,
                audio: 'assets/audio/Ako ay apat na put daliwang golang.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Si David ay may dalawang asukal sa kape niya',
                engWord: 'David has 2 sugars in his coffee',
                icon: Icons.local_cafe,
                color: Colors.white,
                audio:
                    'assets/audio/Si David ay may dalawang asukal sa kape niya.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Si Alicia ay may isang kapatid na babae',
                engWord: 'Alicia has one sister',
                icon: FontAwesomeIcons.female,
                color: Colors.white,
                audio:
                    'assets/audio/Si Alicia ay may isang kapatid na babae.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Si Jennifer ay may apat na kapatid na lalaki',
                engWord: 'Jennifer has 4 brothers',
                icon: FontAwesomeIcons.male,
                color: Colors.white,
                audio:
                    'assets/audio/Si Jennifer ay may apat na kapatid na lalaki.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Ang nanay ko ay tatlongput limang taong gulang',
                engWord: 'My mother is 35 years old',
                icon: Icons.person_sharp,
                color: Colors.white,
                audio:
                'assets/audio/Ang nanay ko ay tatlongput limang taong gulang.mp3',
                type: 'phrase',
              )
            ],
          ),
        ],
      ),
      //TODO: Make Custom Icons
      Topic(
        name: 'Days of the Week',
        icon: FontAwesomeIcons.plane,
        color: Colors.red[700],
        backgroundColor: Colors.redAccent,
        lessons: [
          Lesson(
            name: 'Lesson One',
            icon: FontAwesomeIcons.bicycle,
            color: Colors.red[700],
            backgroundColor: Colors.redAccent,
              lessonContent: [
                LessonContent(
                    tagalogWord: 'Lunes',
                    engWord: 'Monday',
                    color: Colors.orange,
                    icon: WeekdayIcons.monday_calendar_page,
                    audio: 'assets/audio/Lunes.mp3',
                    type: 'word'
                ),
                LessonContent(
                    tagalogWord: 'Martes',
                    engWord: 'Tuesday',
                    color: Colors.orange,
                    icon: WeekdayIcons.tuesday_daily_calendar_page,
                    audio: 'assets/audio/Martes.mp3',
                    type: 'word'
                ),
                LessonContent(
                    tagalogWord: 'Miyerkules',
                    engWord: 'Wednesday',
                    color: Colors.orange,
                    icon: WeekdayIcons.wednesday_calendar_daily_page,
                    audio: 'assets/audio/Miyerkules.mp3',
                    type: 'word'
                ),
                LessonContent(
                    tagalogWord: 'Huwebes',
                    engWord: 'Thursday',
                    color: Colors.orange,
                    icon: WeekdayIcons.thursday_calendar_daily_page_interface_symbol,
                    audio: 'assets/audio/Huwebes.mp3',
                    type: 'word'
                ),
                LessonContent(
                    tagalogWord: 'Biyernes',
                    engWord: 'Friday',
                    color: Colors.orange,
                    icon: WeekdayIcons.friday_daily_calendar_page,
                    audio: 'assets/audio/Biyernes.mp3',
                    type: 'word'
                ),
                LessonContent(
                    tagalogWord: 'Sabado',
                    engWord: 'Saturday',
                    color: Colors.orange,
                    icon: WeekdayIcons.saturday_calendar_daily_page_interface_symbol,
                    audio: 'assets/audio/Sabado.mp3',
                    type: 'word'
                ),
                LessonContent(
                    tagalogWord: 'Linggo',
                    engWord: 'Sunday',
                    color: Colors.orange,
                    icon: WeekdayIcons.sunday_daily_calendar_page,
                    audio: 'assets/audio/Linggo.mp3',
                    type: 'word'
                ),

              ]
          ),
          Lesson(
            name: 'Lesson Two',
            icon: FontAwesomeIcons.tractor,
            color: Colors.red[700],
            backgroundColor: Colors.redAccent,
              lessonContent: [
                LessonContent(
                    tagalogWord: 'Ngayon ay Lunes',
                    engWord: 'Today is Monday',
                    color: Colors.orange,
                    icon: WeekdayIcons.monday_calendar_page,
                    audio: 'assets/audio/Ngayon ay Lunes.mp3',
                    type: 'phrase'
                ),
                LessonContent(
                    tagalogWord: 'Bukas ay Miyerkules',
                    engWord: 'Tomorrow',
                    color: Colors.orange,
                    icon: WeekdayIcons.tuesday_daily_calendar_page,
                    audio: 'assets/audio/Bukas ay Miyerkules.mp3',
                    type: 'phrase'
                ),
                LessonContent(
                    tagalogWord: 'Ngayon ay Huwebes',
                    engWord: 'Today is Thursday',
                    color: Colors.orange,
                    icon: WeekdayIcons.wednesday_calendar_daily_page,
                    audio: 'assets/audio/Ngayon ay Huwebes.mp3',
                    type: 'phrase'
                ),
                LessonContent(
                    tagalogWord: 'Ngayon ay Biyernes',
                    engWord: 'Today is Friday',
                    color: Colors.orange,
                    icon: WeekdayIcons.thursday_calendar_daily_page_interface_symbol,
                    audio: 'assets/audio/Ngayon ay Biyernes.mp3',
                    type: 'phrase'
                ),
                LessonContent(
                    tagalogWord: 'Bukas ay Sabado',
                    engWord: 'Tomorrow is Saturday',
                    color: Colors.orange,
                    icon: WeekdayIcons.friday_daily_calendar_page,
                    audio: 'assets/audio/Bukas ay Sabado.mp3',
                    type: 'phrase'
                ),
                LessonContent(
                    tagalogWord: 'Kahapon ay Martes',
                    engWord: 'Yesterday was Tuesday',
                    color: Colors.orange,
                    icon: WeekdayIcons.saturday_calendar_daily_page_interface_symbol,
                    audio: 'assets/audio/Kahapon ay Martes.mp3',
                    type: 'phrase'
                ),
                LessonContent(
                    tagalogWord: 'Ngayon ay Linggo',
                    engWord: 'Today is Sunday',
                    color: Colors.orange,
                    icon: WeekdayIcons.sunday_daily_calendar_page,
                    audio: 'assets/audio/Ngayon ay Linggo.mp3',
                    type: 'phrase'
                ),
              ]
          ),
          Lesson(
            name: 'Lesson Three',
            icon: FontAwesomeIcons.spaceShuttle,
            color: Colors.red[700],
            backgroundColor: Colors.redAccent,
            lessonContent: [
              LessonContent(
                tagalogWord: 'Ako ay magbabakasyon sa Martes',
                engWord: 'I am going on holiday on Tuesday',
                icon: FontAwesomeIcons.plane,
                audio: 'assets/audio/Ako ay magbabakasyon sa Martes.mp3',
                color: Colors.white,
                type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Magbabakasyon ako ng dalawang linggo',
                  engWord: 'I am going on holiday for 2 weeks',
                  icon: FontAwesomeIcons.plane,
                  audio: 'assets/audio/Magbabakasyon ako ng dalawang linggo.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Magbabakasyon ako ng dalawang linggo',
                  engWord: 'I am going on holiday for 2 weeks',
                  icon: FontAwesomeIcons.plane,
                  audio: 'assets/audio/Magbabakasyon ako ng dalawang linggo.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Ano ang petsa ngayon?',
                  engWord: 'What is the date today',
                  icon: FontAwesomeIcons.plane,
                  audio: 'assets/audio/Ano ang petsa ngayon_.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Ang petsa ngayon ay',
                  engWord: 'Today\'s date is...',
                  icon: FontAwesomeIcons.plane,
                  audio: 'assets/audio/ang petsa ngayon ay.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Ang petsa ngayon ay dalawampu\'t-tatlo ng Agosto, 2021',
                  engWord: 'Today\'s date is 23rd of August, 2021',
                  icon: FontAwesomeIcons.plane,
                  audio: 'assets/audio/ang petsa ngayon ay dalawampu\'t-tatlo ng Agosto, 2021.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
            ]
          ),
        ],
      ),
      Topic(
        name: 'Months',
        icon: FontAwesomeIcons.paintBrush,
        color: Colors.cyan,
        backgroundColor: Colors.cyanAccent,
        lessons: [
          Lesson(
            name: 'Months One',
            icon: FontAwesomeIcons.calendar,
            color: Colors.cyan,
            backgroundColor: Colors.cyanAccent,
            lessonContent: [
              LessonContent(
                tagalogWord: 'Enero',
                engWord: 'January',
                icon: FontAwesomeIcons.jedi,
                audio: 'assets/audio/Enero.mp3',
                color: Colors.white,
                type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Pebrero',
                  engWord: 'February',
                  icon: FontAwesomeIcons.jedi,
                  audio: 'assets/audio/Pebrero.mp3',
                  color: Colors.white,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Marso',
                  engWord: 'March',
                  icon: FontAwesomeIcons.jedi,
                  audio: 'assets/audio/Marso.mp3',
                  color: Colors.white,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Abril',
                  engWord: 'April',
                  icon: FontAwesomeIcons.jedi,
                  audio: 'assets/audio/Abril.mp3',
                  color: Colors.white,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Mayo',
                  engWord: 'May',
                  icon: FontAwesomeIcons.jedi,
                  audio: 'assets/audio/Mayo.mp3',
                  color: Colors.white,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Hunyo',
                  engWord: 'June',
                  icon: FontAwesomeIcons.jedi,
                  audio: 'assets/audio/Hunyo.mp3',
                  color: Colors.white,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Hulyo',
                  engWord: 'July',
                  icon: FontAwesomeIcons.jedi,
                  audio: 'assets/audio/Hulyo.mp3',
                  color: Colors.white,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Agosto',
                  engWord: 'August',
                  icon: FontAwesomeIcons.jedi,
                  audio: 'assets/audio/Agosto.mp3',
                  color: Colors.white,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Septiembre',
                  engWord: 'September',
                  icon: FontAwesomeIcons.jedi,
                  audio: 'assets/audio/Septiembre.mp3',
                  color: Colors.white,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Oktubre',
                  engWord: 'October',
                  icon: FontAwesomeIcons.jedi,
                  audio: 'assets/audio/Oktubre.mp3',
                  color: Colors.white,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Nobyembre',
                  engWord: 'November',
                  icon: FontAwesomeIcons.jedi,
                  audio: 'assets/audio/Nobyembre.mp3',
                  color: Colors.white,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Disyembre',
                  engWord: 'Decemeber',
                  icon: FontAwesomeIcons.jedi,
                  audio: 'assets/audio/Disyembre.mp3',
                  color: Colors.white,
                  type: 'word'
              ),
            ]

          ),
          Lesson(
            name: 'Months Two',
            icon: FontAwesomeIcons.calendarDay,
            color: Colors.cyan,
            backgroundColor: Colors.cyanAccent,
            //TODO: Make icons
            lessonContent: [
              LessonContent(
                  tagalogWord: 'Kaarawan',
                  engWord: 'Birthday',
                  icon: FontAwesomeIcons.birthdayCake,
                  audio: 'assets/audio/Kaarawan.mp3',
                  color: Colors.white,
                  type: 'word'
              ),
              LessonContent(
                  tagalogWord: 'Ang nanay ko ay ipinanganak noong Oktubre',
                  engWord: 'My mother was born in October',
                  icon: FontAwesomeIcons.birthdayCake,
                  audio: 'assets/audio/Ang nanay ko ay ipinanganak noong Oktubre.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Ang araw ng kapanganakan ko ay Enero',
                  engWord: 'My birthday is in January',
                  icon: FontAwesomeIcons.birthdayCake,
                  audio: 'assets/audio/Ang araw ng kapanganakan ko ay Enero.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Ang kapanganakan ng kapatid kong babae ay Marso',
                  engWord: 'My sisters birthday is on March',
                  icon: FontAwesomeIcons.birthdayCake,
                  audio: 'assets/audio/Ang kapanganakan ng kapatid kong babae ay Marso.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Ang kaarawan ng aking kapatid ay sa Setyembre',
                  engWord: 'My brothers birthday is on September',
                  icon: FontAwesomeIcons.birthdayCake,
                  audio: 'assets/audio/Ang kaarawan ng aking kapatid ay sa Setyembre.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Ang kaarawan ng aking tiyuhin ay sa Hulyo',
                  engWord: 'My uncles birthday is on July',
                  icon: FontAwesomeIcons.birthdayCake,
                  audio: 'assets/audio/Ang kapanganakan ng kapatid kong babae ay Marso.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Ang kaarawan ng aking Tita ay sa Agosto',
                  engWord: 'My aunties birthday is on August',
                  icon: FontAwesomeIcons.birthdayCake,
                  audio: 'assets/audio/Ang kaarawan ng aking Tita ay sa Agosto.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
            ]
          ),
          Lesson(
            name: 'Months Three',
            icon: FontAwesomeIcons.calendarWeek,
            color: Colors.cyan,
            backgroundColor: Colors.cyanAccent,
            lessonContent: [
              LessonContent(
                  tagalogWord: 'Ang kaarawan ko ay ikalawa ng Enero',
                  engWord: 'My birthday is the 2nd of January',
                  icon: FontAwesomeIcons.birthdayCake,
                  audio: 'assets/audio/Ang kaarawan ko ay ikalawa ng Enero.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Ipinanganak ako noong ika-dalawampu\'t tatlo ng Marso dalawang libo at isa',
                  engWord: 'I was born on the 23rd of March',
                  icon: FontAwesomeIcons.birthdayCake,
                  audio: 'assets/audio/Ipinanganak ako noong ika-dalawampu\'t tatlo ng Marso dalawang libo at isa.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Ipinanganak ako noong ika-30, Mayo Labing-siyam walumpu',
                  engWord: 'I was born on the 30th, May 1980',
                  icon: FontAwesomeIcons.birthdayCake,
                  audio: 'assets/audio/Ipinanganak ako noong ika-30, Mayo Labing-siyam walumpu.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Ang aking kaarawan ay ikalabinsiyam ng june',
                  engWord: 'My birthday is the 19th of June',
                  icon: FontAwesomeIcons.birthdayCake,
                  audio: 'assets/audio/Ang aking kaarawan ay ikalabinsiyam ng june.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Ang kaarawan ng aking kapatid ay sa ikalabing-apat ng Nobyembre',
                  engWord: 'My brothers birthday is the 14th of November',
                  icon: FontAwesomeIcons.birthdayCake,
                  audio: 'assets/audio/ang kaarawan ng aking kapatid ay sa ikalabing-apat ng Nobyembre.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Ang kaarawan ng aking kapatid na babae ay ang dalawampu\'t segundo ng Pebrero',
                  engWord: 'My sisters birthday is the 22nd of Feburary',
                  icon: FontAwesomeIcons.birthdayCake,
                  audio: 'assets/audio/Ang kaarawan ng aking kapatid na babae ay ang dalawampu\'t segundo ng Pebrero.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
              LessonContent(
                  tagalogWord: 'Ang kaarawan ng pinsan ko ay pang-apat ng Mayo',
                  engWord: 'My cousins birthday is the 4th of May',
                  icon: FontAwesomeIcons.birthdayCake,
                  audio: 'assets/audio/Ang kaarawan ng pinsan ko ay pang-apat ng Mayo.mp3',
                  color: Colors.white,
                  type: 'phrase'
              ),
            ]
          ),
        ],
      ),
      Topic(
        name: 'Colours',
        icon: FontAwesomeIcons.paintBrush,
        color: Colors.deepOrange,
        backgroundColor: Colors.orangeAccent,
        lessons: [
          Lesson(
              name: 'Colours One',
              icon: FontAwesomeIcons.bicycle,
              color: Colors.deepOrange,
              backgroundColor: Colors.orangeAccent,
              lessonContent: [
                LessonContent(
                    tagalogWord: 'Puti',
                    engWord: 'White',
                    icon: FontAwesomeIcons.circle,
                    color: Colors.white,
                    audio: 'assets/audio/Puti.mp3',
                    type: 'word'),
                LessonContent(
                    tagalogWord: 'Itim',
                    engWord: 'Black',
                    icon: FontAwesomeIcons.circle,
                    color: Colors.black,
                    audio: 'assets/audio/itim.mp3',
                    type: 'word'),
                LessonContent(
                    tagalogWord: 'Bughan',
                    engWord: 'Blue',
                    icon: FontAwesomeIcons.circle,
                    color: Colors.blue,
                    audio: 'assets/audio/Bughan.mp3',
                    type: 'word'),
                LessonContent(
                    tagalogWord: 'Pula',
                    engWord: 'Red',
                    icon: FontAwesomeIcons.circle,
                    color: Colors.red,
                    audio: 'assets/audio/Pula.mp3',
                    type: 'word'),
                LessonContent(
                    tagalogWord: 'Kayumangi',
                    engWord: 'Brown',
                    icon: FontAwesomeIcons.circle,
                    color: Colors.brown,
                    audio: 'assets/audio/Kayumangi.mp3',
                    type: 'word'),
                LessonContent(
                    tagalogWord: 'Dilaw',
                    engWord: 'Yellow',
                    icon: FontAwesomeIcons.circle,
                    color: Colors.yellow,
                    audio: 'assets/audio/Dilaw.mp3',
                    type: 'word'),
              ]),
          Lesson(
              name: 'Colours Two',
              icon: FontAwesomeIcons.tractor,
              color: Colors.deepOrange,
              backgroundColor: Colors.orangeAccent,
              lessonContent: [
                LessonContent(
                    tagalogWord: 'Violet',
                    engWord: 'Purple',
                    icon: FontAwesomeIcons.circle,
                    color: Colors.purple,
                    audio: 'assets/audio/Violet.mp3',
                    type: 'word'),
                LessonContent(
                    tagalogWord: 'Kulay',
                    engWord: 'Orange',
                    icon: FontAwesomeIcons.circle,
                    color: Colors.orange,
                    audio: 'assets/audio/Kulay.mp3',
                    type: 'word'),
                LessonContent(
                    tagalogWord: 'Abo',
                    engWord: 'Grey',
                    icon: FontAwesomeIcons.circle,
                    color: Colors.grey,
                    audio: 'assets/audio/Abo.mp3',
                    type: 'word'),
              ]),
          Lesson(
              name: 'Colours Three',
              icon: FontAwesomeIcons.spaceShuttle,
              color: Colors.deepOrange,
              backgroundColor: Colors.orangeAccent,
              lessonContent: [
                LessonContent(
                  tagalogWord: 'Pulang Sweater',
                  engWord: 'Red Jumper',
                  icon: FontAwesomeIcons.personBooth,
                  color: Colors.red,
                  audio: 'assets/audio/Pulang Sweater.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Bughaw na sapatos',
                  engWord: 'Blue shoes',
                  icon: FontAwesomeIcons.shoePrints,
                  color: Colors.blue,
                  audio: 'assets/audio/Bughaw na sapatos.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Berdeng Jacket',
                  engWord: 'Green Jacket',
                  icon: FontAwesomeIcons.personBooth,
                  color: Colors.green,
                  audio: 'assets/audio/Berdeng Jacket.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Dilaw na balla',
                  engWord: 'Yellow Ball',
                  icon: FontAwesomeIcons.golfBall,
                  color: Colors.yellow,
                  audio: 'assets/audio/Dilaw na balla.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Orange na sumbrero',
                  engWord: 'Orange hat',
                  icon: FontAwesomeIcons.hatCowboy,
                  color: Colors.orange,
                  audio: 'assets/audio/Orange na sumbrero.mp3',
                  type: 'phrase',
                ),
              ]),
          Lesson(
              name: 'Colours Four',
              icon: FontAwesomeIcons.plane,
              color: Colors.deepOrange,
              backgroundColor: Colors.orangeAccent,
              lessonContent: [
                LessonContent(
                  tagalogWord: 'Itim na sapatos',
                  engWord: 'Orange hat',
                  icon: FontAwesomeIcons.shoePrints,
                  color: Colors.black,
                  audio: 'assets/audio/Itim na Sapatos.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Kayumanggi bag',
                  engWord: 'Brown bag',
                  icon: FontAwesomeIcons.shoppingBag,
                  color: Colors.brown,
                  audio: 'assets/audio/Kayumanggi bag.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Orange na pusa',
                  engWord: 'Orange cat',
                  icon: FontAwesomeIcons.cat,
                  color: Colors.orange,
                  audio: 'assets/audio/Orange na pusa.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Purple na medyas',
                  engWord: 'Purple socks',
                  icon: FontAwesomeIcons.socks,
                  color: Colors.deepPurple,
                  audio: 'assets/audio/Purple na medyas.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Puting medyas',
                  engWord: 'White socks',
                  icon: FontAwesomeIcons.socks,
                  color: Colors.deepPurple,
                  audio: 'assets/audio/Puting medyas.mp3',
                  type: 'phrase',
                ),
              ]),
          Lesson(
              name: 'Colours Five',
              icon: FontAwesomeIcons.car,
              color: Colors.deepOrange,
              backgroundColor: Colors.orangeAccent,
              lessonContent: [
                LessonContent(
                  tagalogWord: 'Suot ko ay asul na medyas',
                  engWord: 'I am wearing blue socks',
                  icon: FontAwesomeIcons.socks,
                  color: Colors.blue,
                  audio: 'assets/audio/Suot ko ay asul na medyas.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Suot ko ay pulang sweater',
                  engWord: 'I am wearing a red jumper',
                  icon: Icons.person_rounded,
                  color: Colors.red,
                  audio: 'assets/audio/Suot ko ay pulang sweater.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Suot ko ang orange na t-shirt',
                  engWord: 'I am wearing an orange t-shirt',
                  icon: FontAwesomeIcons.socks,
                  color: Colors.deepPurple,
                  audio: 'assets/audio/suot ko an orange na t-shirt.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Suot ko ay berdeng sumbrero',
                  engWord: 'I am wearing a green hat',
                  icon: FontAwesomeIcons.hatWizard,
                  color: Colors.green,
                  audio: 'assets/audio/Suot ko ay berdeng sumbrero.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Suot ko ay light blue sweater',
                  engWord: 'I am wearing a light blue jumper ',
                  icon: FontAwesomeIcons.personBooth,
                  color: Colors.lightBlue,
                  audio: 'assets/audio/Suot ko ay light blue sweater.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Suot ko ay dark brown na saptos',
                  engWord: 'I am wearing dark brown shoes',
                  icon: FontAwesomeIcons.hatWizard,
                  color: Color(0xFF2B1D16),
                  audio: 'assets/audio/Suot ko ay dark brown na saptos.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Suot ko ay grey na saptos',
                  engWord: 'I am wearing grey trainers',
                  icon: FontAwesomeIcons.hatWizard,
                  color: Color(0xFF2B1D16),
                  audio: 'assets/audio/Suot ko ay grey na saptos.mp3',
                  type: 'phrase',
                ),
                LessonContent(
                  tagalogWord: 'Nakasuot ako ng puting medyas',
                  engWord: 'I am wearing white socks (Formal)',
                  icon: FontAwesomeIcons.hatWizard,
                  color: Color(0xFF2B1D16),
                  audio: 'assets/audio/Nakasuot ako ng puting medyas.mp3',
                  type: 'phrase',
                ),
              ]),
          Lesson(
            name: 'Colours Six',
            icon: FontAwesomeIcons.train,
            color: Colors.deepOrange,
            backgroundColor: Colors.orangeAccent,
            lessonContent: [
              LessonContent(
                tagalogWord: 'Meron akong brown na bag',
                engWord: 'I have a brown bag',
                icon: FontAwesomeIcons.shoppingBag,
                color: Colors.brown,
                audio: 'assets/audio/Meron akong brown na bag.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Meron akong purple na malleta',
                engWord: 'I have a purple suitcase',
                icon: FontAwesomeIcons.suitcase,
                color: Colors.purple,
                audio: 'assets/audio/Meron akong purple na malleta.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Meron akong orange na pusa',
                engWord: 'I have an orange cat',
                icon: FontAwesomeIcons.cat,
                color: Colors.orange,
                audio: 'assets/audio/Meron akong orange na pusa.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Meron akong bag na kulay dilaw',
                engWord: 'I have a yellow bag',
                icon: Icons.shopping_bag,
                color: Colors.yellow,
                audio: 'assets/audio/Meron akong bag na kulay dilaw.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Mayroon akong mga bulaklak na kahel',
                engWord: 'I have orange flowers',
                icon: Icons.filter_vintage,
                color: Colors.orange,
                audio: 'assets/audio/Mayroon akong mga bulaklak na kahel.mp3',
                type: 'phrase',
              ),
              LessonContent(
                tagalogWord: 'Siya ay may ilaw na berde na mga mata',
                engWord: 'I have a brown bag',
                icon: FontAwesomeIcons.eye,
                color: Colors.green,
                audio: 'assets/audio/Siya ay may ilaw na berde na mga mata.mp3',
                type: 'phrase',
              ),
            ],
          ),
        ],
      ),
    ];
  }
}
