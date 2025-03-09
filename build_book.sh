#!/bin/bash

rm -Rf _posts
mkdir -p _posts

cd book

d=`date +"%Y-%m-%d"`

chapter1="../_posts/$d-chapter1.md"
touch "$chapter1"
echo "---" >> "$chapter1"
echo "title: Elias" >> "$chapter1"
echo "layout: post" >> "$chapter1"
echo "order: 1" >> "$chapter1"
echo "---" >> "$chapter1"

cat 0001-intro.md >> "$chapter1"
cat 0002-city_of_machines.md >> "$chapter1"
cat 0003-the_librarian.md >> "$chapter1"
cat 0004-hidden_room.md >> "$chapter1"
cat 0005-the_weight_of_knowledge.md >> "$chapter1"
cat 0006-the_police_station.md >> "$chapter1"
cat 0007-the_school.md >> "$chapter1"
cat 0008-the_feed.md >> "$chapter1"
cat 0009-standing_his_ground.md >> "$chapter1"
cat 0010-the_playground.md >> "$chapter1"

chapter2="../_posts/$d-chapter2.md"
touch "$chapter2"
echo "---" >> "$chapter2"
echo "title: The Challenge" >> "$chapter2"
echo "layout: post" >> "$chapter2"
echo "order: 2" >> "$chapter2"
echo "---" >> "$chapter2"


cat 0011-the_abattoir.md >> "$chapter2"
cat 0012-elias_place.md >> "$chapter2"
cat 0013-compagnons.md >> "$chapter2"
cat 0014-elias_role.md >> "$chapter2"
cat 0015-first_night.md >> "$chapter2"
cat 0016-the_challenge.md >> "$chapter2"

chapter3="../_posts/$d-chapter3.md"
touch "$chapter3"
echo "---" >> "$chapter3"
echo "title: Numbers" >> "$chapter3"
echo "layout: post" >> "$chapter3"
echo "order: 3" >> "$chapter3"
echo "---" >> "$chapter3"

cat 0017-china_town.md >> "$chapter3"
cat 0018-beauty_of_numbers.md >> "$chapter3"
cat 0019-number_encodings.md >> "$chapter3"
cat 0020-binary.md >> "$chapter3"
cat 0021-the_gift.md >> "$chapter3"
cat 0022-building_a_circuit.md >> "$chapter3"
cat 0023-the_missing_piece.md >> "$chapter3"

chapter4="../_posts/$d-chapter4.md"
touch "$chapter4"
echo "---" >> "$chapter4"
echo "title: Jasmina" >> "$chapter4"
echo "layout: post" >> "$chapter4"
echo "order: 4" >> "$chapter4"
echo "---" >> "$chapter4"

cat 0024-jasmina.md >> "$chapter4"
cat 0025-jasminas_mother.md >> "$chapter4"
cat 0026-family_dinner.md >> "$chapter4"
cat 0027-ride_to_the_lake.md >> "$chapter4"
cat 0028-next_lesson.md >> "$chapter4"
cat 0030-registers.md >> "$chapter4"
cat 0031-first_program.md >> "$chapter4"
cat 0032-debugger.md >> "$chapter4"
cat 0033-first_loop.md >> "$chapter4"
cat 0034-the_raid.md >> "$chapter4"
cat 0035-the_escape.md >> "$chapter4"

chapter5="../_posts/$d-chapter5.md"
touch "$chapter5"
echo "---" >> "$chapter5"
echo "title: The Inquisitor" >> "$chapter5"
echo "layout: post" >> "$chapter5"
echo "order: 5" >> "$chapter5"
echo "---" >> "$chapter5"

cat 0040-the_voices.md >> "$chapter5"
cat 0050-inquisitor.md >> "$chapter5"
cat 0060-the_call.md >> "$chapter5"
cat 0070-headquarters.md >> "$chapter5"
cat 0080-memory.md >> "$chapter5"
cat 0090-hacking_grades.md >> "$chapter5"
cat 0100-the_plan.md >> "$chapter5"
cat 0110-the_trap.md >> "$chapter5"

chapter6="../_posts/$d-chapter6.md"
touch "$chapter6"
echo "---" >> "$chapter6"
echo "title: Master Vulcan" >> "$chapter6"
echo "layout: post" >> "$chapter6"
echo "order: 6" >> "$chapter6"
echo "---" >> "$chapter6"

cat 0120-cadets.md >> "$chapter6"
cat 0130-factions.md >> "$chapter6"
cat 0140-monastery.md >> "$chapter6"
cat 0150-branches.md >> "$chapter6"

chapter7="../_posts/$d-chapter7.md"
touch "$chapter7"
echo "---" >> "$chapter7"
echo "title: Games" >> "$chapter7"
echo "layout: post" >> "$chapter7"
echo "order: 7" >> "$chapter7"
echo "---" >> "$chapter7"

cat 0160-lacrosse.md >> "$chapter7"
cat 0170-bernardo.md >> "$chapter7"
cat 0180-automata.md >> "$chapter7"
cat 0190-regular_expressions.md >> "$chapter7"
cat 0200-regular_expression2.md >> "$chapter7"
cat 0209-stack1.md >> "$chapter7"
cat 0210-stack2.md >> "$chapter7"
cat 0220-fight.md >> "$chapter7"
cat 0222-fight2.md >> "$chapter7"
cat 0230-sebastian_questions.md >> "$chapter7"

chapter8="../_posts/$d-chapter8.md"
touch "$chapter8"
echo "---" >> "$chapter8"
echo "title: Field trip" >> "$chapter8"
echo "layout: post" >> "$chapter8"
echo "order: 8" >> "$chapter8"
echo "---" >> "$chapter8"

cat 0240-nightmare.md >> "$chapter8"
cat 0245-field_trip.md >> "$chapter8"
cat 0250-supremeAI.md >> "$chapter8"
cat 0260-code_is_data.md >> "$chapter8"
cat 0270-hacking.md >> "$chapter8"
cat 0280-emulator.md >> "$chapter8"
cat 0290-elias_trap.md >> "$chapter8"
cat 0300-infinite_loop.md >> "$chapter8"

chapter9="../_posts/$d-chapter9.md"
touch "$chapter9"
echo "---" >> "$chapter9"
echo "title: The Senate" >> "$chapter9"
echo "layout: post" >> "$chapter9"
echo "order: 9" >> "$chapter9"
echo "---" >> "$chapter9"

cat 0310-route_senate.md >> "$chapter9"
cat 0320-motel.md >> "$chapter9"
cat 0330-functions.md >> "$chapter9"
cat 0335-senate_arrival.md >> "$chapter9"
cat 0337-senate_inside.md >> "$chapter9"
cat 0340-chancellor.md >> "$chapter9"
cat 0350-settling_senate.md >> "$chapter9"
cat 0360-chancellor_speech.md >> "$chapter9"
cat 0370-keller_speech.md >> "$chapter9"
cat 0380-office_explanation.md >> "$chapter9"
cat 0390-office_explanation2.md >> "$chapter9"
cat 0400-office_explanation3.md >> "$chapter9"
cat 0410-office_explanation4.md >> "$chapter9"
cat 0420-office_explanation5.md >> "$chapter9"

chapter10="../_posts/$d-chapter10.md"
touch "$chapter10"
echo "---" >> "$chapter10"
echo "title: C" >> "$chapter10"
echo "layout: post" >> "$chapter10"
echo "order: 10" >> "$chapter10"
echo "---" >> "$chapter10"

cat 0430-bellardians.md >> "$chapter10"
cat 0440-jeremy.md >> "$chapter10"
cat 0450-jslinux.md >> "$chapter10"
cat 0460-system_call.md >> "$chapter10"
cat 0470-less.md >> "$chapter10"
cat 0480-variable.md >> "$chapter10"
cat 0490-C_control.md >> "$chapter10"
cat 0500-emacs.md >> "$chapter10"
