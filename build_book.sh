#!/bin/bash

rm -Rf _posts
mkdir -p _posts

cd book

d=`date +"%Y-%m-%d"`

chapter1="../_posts/$d-chapter1.md"
touch "$chapter1"
echo "---" >> "$chapter1"
echo "title: Chapter 1 - Elias" >> "$chapter1"
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
echo "title: Chapter 2 - The Challenge" >> "$chapter2"
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
echo "title: Chapter 3 - Numbers" >> "$chapter3"
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
echo "title: Chapter 4 - Jasmina" >> "$chapter4"
echo "layout: post" >> "$chapter4"
echo "order: 4" >> "$chapter4"
echo "---" >> "$chapter4"

cat 0024-jasmina.md >> "$chapter4"
cat 0025-jasminas_mother.md >> "$chapter4"
cat 0026-family_dinner.md >> "$chapter4"
cat 0027-ride_to_the_lake.md >> "$chapter4"
cat 0028-next_lesson.md >> "$chapter4"

