require 'test_helper'

class MentsuTest < ActiveSupport::TestCase
  # 作成テスト
  test "create" do
    pai_list = Array.new
    pai_list << Mjt::Analysis::Pai.new('m1', false, false)
    pai_list << Mjt::Analysis::Pai.new('m2', false, false)
    pai_list << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu = Mjt::Analysis::Mentsu.new(pai_list, 's', false)
    
    assert_equal mentsu.pai_list.size, 3
    assert_equal mentsu.mentsu_type, 's'
  end
  
  test "shuntsu" do
    pai_list1 = Array.new
    pai_list1 << Mjt::Analysis::Pai.new('m1', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m2', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu1 = Mjt::Analysis::Mentsu.new(pai_list1, 's', false)
    pai_list2 = Array.new
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    mentsu2 = Mjt::Analysis::Mentsu.new(pai_list2, 'k', false)
    pai_list3 = Array.new
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    mentsu3 = Mjt::Analysis::Mentsu.new(pai_list3, '4', false)
    pai_list4 = Array.new
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    mentsu4 = Mjt::Analysis::Mentsu.new(pai_list4, 't', false)
    pai_list5 = Array.new
    pai_list5 << Mjt::Analysis::Pai.new('m7', false, false)
    mentsu5 = Mjt::Analysis::Mentsu.new(pai_list5, 'y', false)
    
    assert_equal mentsu1.shuntsu?, true
    assert_equal mentsu2.shuntsu?, false
    assert_equal mentsu3.shuntsu?, false
    assert_equal mentsu4.shuntsu?, false
    assert_equal mentsu5.shuntsu?, false
  end
  
  test "koutsu" do
    pai_list1 = Array.new
    pai_list1 << Mjt::Analysis::Pai.new('m1', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m2', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu1 = Mjt::Analysis::Mentsu.new(pai_list1, 's', false)
    pai_list2 = Array.new
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    mentsu2 = Mjt::Analysis::Mentsu.new(pai_list2, 'k', false)
    pai_list3 = Array.new
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    mentsu3 = Mjt::Analysis::Mentsu.new(pai_list3, '4', false)
    pai_list4 = Array.new
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    mentsu4 = Mjt::Analysis::Mentsu.new(pai_list4, 't', false)
    pai_list5 = Array.new
    pai_list5 << Mjt::Analysis::Pai.new('m7', false, false)
    mentsu5 = Mjt::Analysis::Mentsu.new(pai_list5, 'y', false)
    
    assert_equal mentsu1.koutsu?, false
    assert_equal mentsu2.koutsu?, true
    assert_equal mentsu3.koutsu?, false
    assert_equal mentsu4.koutsu?, false
    assert_equal mentsu5.koutsu?, false
  end
  
  test "kantsu" do
    pai_list1 = Array.new
    pai_list1 << Mjt::Analysis::Pai.new('m1', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m2', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu1 = Mjt::Analysis::Mentsu.new(pai_list1, 's', false)
    pai_list2 = Array.new
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    mentsu2 = Mjt::Analysis::Mentsu.new(pai_list2, 'k', false)
    pai_list3 = Array.new
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    mentsu3 = Mjt::Analysis::Mentsu.new(pai_list3, '4', false)
    pai_list4 = Array.new
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    mentsu4 = Mjt::Analysis::Mentsu.new(pai_list4, 't', false)
    pai_list5 = Array.new
    pai_list5 << Mjt::Analysis::Pai.new('m7', false, false)
    mentsu5 = Mjt::Analysis::Mentsu.new(pai_list5, 'y', false)
    
    assert_equal mentsu1.kantsu?, false
    assert_equal mentsu2.kantsu?, false
    assert_equal mentsu3.kantsu?, true
    assert_equal mentsu4.kantsu?, false
    assert_equal mentsu5.kantsu?, false
  end
  
  test "toitsu" do
    pai_list1 = Array.new
    pai_list1 << Mjt::Analysis::Pai.new('m1', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m2', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu1 = Mjt::Analysis::Mentsu.new(pai_list1, 's', false)
    pai_list2 = Array.new
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    mentsu2 = Mjt::Analysis::Mentsu.new(pai_list2, 'k', false)
    pai_list3 = Array.new
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    mentsu3 = Mjt::Analysis::Mentsu.new(pai_list3, '4', false)
    pai_list4 = Array.new
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    mentsu4 = Mjt::Analysis::Mentsu.new(pai_list4, 't', false)
    pai_list5 = Array.new
    pai_list5 << Mjt::Analysis::Pai.new('m7', false, false)
    mentsu5 = Mjt::Analysis::Mentsu.new(pai_list5, 'y', false)
    
    assert_equal mentsu1.toitsu?, false
    assert_equal mentsu2.toitsu?, false
    assert_equal mentsu3.toitsu?, false
    assert_equal mentsu4.toitsu?, true
    assert_equal mentsu5.toitsu?, false
  end
  
  test "tokusyu" do
    pai_list1 = Array.new
    pai_list1 << Mjt::Analysis::Pai.new('m1', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m2', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu1 = Mjt::Analysis::Mentsu.new(pai_list1, 's', false)
    pai_list2 = Array.new
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    mentsu2 = Mjt::Analysis::Mentsu.new(pai_list2, 'k', false)
    pai_list3 = Array.new
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    mentsu3 = Mjt::Analysis::Mentsu.new(pai_list3, '4', false)
    pai_list4 = Array.new
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    mentsu4 = Mjt::Analysis::Mentsu.new(pai_list4, 't', false)
    pai_list5 = Array.new
    pai_list5 << Mjt::Analysis::Pai.new('m7', false, false)
    mentsu5 = Mjt::Analysis::Mentsu.new(pai_list5, 'y', false)
    
    assert_equal mentsu1.tokusyu?, false
    assert_equal mentsu2.tokusyu?, false
    assert_equal mentsu3.tokusyu?, false
    assert_equal mentsu4.tokusyu?, false
    assert_equal mentsu5.tokusyu?, true
  end
  
  test "furo" do
    pai_list1 = Array.new
    pai_list1 << Mjt::Analysis::Pai.new('m1', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m2', true, false)
    pai_list1 << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu1 = Mjt::Analysis::Mentsu.new(pai_list1, 's', false)
    pai_list2 = Array.new
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    mentsu2 = Mjt::Analysis::Mentsu.new(pai_list2, 'k', false)
    pai_list3 = Array.new
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    mentsu3 = Mjt::Analysis::Mentsu.new(pai_list3, '4', false)
    pai_list4 = Array.new
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    mentsu4 = Mjt::Analysis::Mentsu.new(pai_list4, 't', false)
    pai_list5 = Array.new
    pai_list5 << Mjt::Analysis::Pai.new('m7', false, false)
    mentsu5 = Mjt::Analysis::Mentsu.new(pai_list5, 'y', false)
    
    assert_equal mentsu1.furo?, true
    assert_equal mentsu2.furo?, false
    assert_equal mentsu3.furo?, false
    assert_equal mentsu4.furo?, false
    assert_equal mentsu5.furo?, false
  end
  
  test "manzu" do
    pai_list1 = Array.new
    pai_list1 << Mjt::Analysis::Pai.new('m1', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m2', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu1 = Mjt::Analysis::Mentsu.new(pai_list1, 's', false)
    pai_list2 = Array.new
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    mentsu2 = Mjt::Analysis::Mentsu.new(pai_list2, 'k', false)
    pai_list3 = Array.new
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    mentsu3 = Mjt::Analysis::Mentsu.new(pai_list3, '4', false)
    pai_list4 = Array.new
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    mentsu4 = Mjt::Analysis::Mentsu.new(pai_list4, 't', false)
    pai_list5 = Array.new
    pai_list5 << Mjt::Analysis::Pai.new('m7', false, false)
    mentsu5 = Mjt::Analysis::Mentsu.new(pai_list5, 'y', false)
    
    assert_equal mentsu1.manzu?, true
    assert_equal mentsu2.manzu?, false
    assert_equal mentsu3.manzu?, false
    assert_equal mentsu4.manzu?, false
    assert_equal mentsu5.manzu?, true
  end
  
  test "pinzu" do
    pai_list1 = Array.new
    pai_list1 << Mjt::Analysis::Pai.new('m1', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m2', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu1 = Mjt::Analysis::Mentsu.new(pai_list1, 's', false)
    pai_list2 = Array.new
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    mentsu2 = Mjt::Analysis::Mentsu.new(pai_list2, 'k', false)
    pai_list3 = Array.new
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    mentsu3 = Mjt::Analysis::Mentsu.new(pai_list3, '4', false)
    pai_list4 = Array.new
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    mentsu4 = Mjt::Analysis::Mentsu.new(pai_list4, 't', false)
    pai_list5 = Array.new
    pai_list5 << Mjt::Analysis::Pai.new('m7', false, false)
    mentsu5 = Mjt::Analysis::Mentsu.new(pai_list5, 'y', false)
    
    assert_equal mentsu1.pinzu?, false
    assert_equal mentsu2.pinzu?, true
    assert_equal mentsu3.pinzu?, false
    assert_equal mentsu4.pinzu?, false
    assert_equal mentsu5.pinzu?, false
  end
  
  test "souzu" do
    pai_list1 = Array.new
    pai_list1 << Mjt::Analysis::Pai.new('m1', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m2', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu1 = Mjt::Analysis::Mentsu.new(pai_list1, 's', false)
    pai_list2 = Array.new
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    mentsu2 = Mjt::Analysis::Mentsu.new(pai_list2, 'k', false)
    pai_list3 = Array.new
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    mentsu3 = Mjt::Analysis::Mentsu.new(pai_list3, '4', false)
    pai_list4 = Array.new
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    mentsu4 = Mjt::Analysis::Mentsu.new(pai_list4, 't', false)
    pai_list5 = Array.new
    pai_list5 << Mjt::Analysis::Pai.new('m7', false, false)
    mentsu5 = Mjt::Analysis::Mentsu.new(pai_list5, 'y', false)
    
    assert_equal mentsu1.souzu?, false
    assert_equal mentsu2.souzu?, false
    assert_equal mentsu3.souzu?, true
    assert_equal mentsu4.souzu?, false
    assert_equal mentsu5.souzu?, false
  end
  
  test "jihai" do
    pai_list1 = Array.new
    pai_list1 << Mjt::Analysis::Pai.new('m1', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m2', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu1 = Mjt::Analysis::Mentsu.new(pai_list1, 's', false)
    pai_list2 = Array.new
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p4', false, false)
    mentsu2 = Mjt::Analysis::Mentsu.new(pai_list2, 'k', false)
    pai_list3 = Array.new
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s5', false, false)
    mentsu3 = Mjt::Analysis::Mentsu.new(pai_list3, '4', false)
    pai_list4 = Array.new
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('j6', false, false)
    mentsu4 = Mjt::Analysis::Mentsu.new(pai_list4, 't', false)
    pai_list5 = Array.new
    pai_list5 << Mjt::Analysis::Pai.new('m7', false, false)
    mentsu5 = Mjt::Analysis::Mentsu.new(pai_list5, 'y', false)
    
    assert_equal mentsu1.jihai?, false
    assert_equal mentsu2.jihai?, false
    assert_equal mentsu3.jihai?, false
    assert_equal mentsu4.jihai?, true
    assert_equal mentsu5.jihai?, false
  end
  
  test "ryanmen" do
    pai_list1 = Array.new
    pai_list1 << Mjt::Analysis::Pai.new('m1', false, true)
    pai_list1 << Mjt::Analysis::Pai.new('m2', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu1 = Mjt::Analysis::Mentsu.new(pai_list1, 's', false)
    pai_list2 = Array.new
    pai_list2 << Mjt::Analysis::Pai.new('p1', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p2', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p3', false, true)
    mentsu2 = Mjt::Analysis::Mentsu.new(pai_list2, 's', false)
    pai_list3 = Array.new
    pai_list3 << Mjt::Analysis::Pai.new('s7', false, true)
    pai_list3 << Mjt::Analysis::Pai.new('s8', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s9', false, false)
    mentsu3 = Mjt::Analysis::Mentsu.new(pai_list3, 's', false)
    pai_list4 = Array.new
    pai_list4 << Mjt::Analysis::Pai.new('m7', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('m8', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('m9', false, true)
    mentsu4 = Mjt::Analysis::Mentsu.new(pai_list4, 's', false)
    pai_list5 = Array.new
    pai_list5 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list5 << Mjt::Analysis::Pai.new('p5', false, true)
    pai_list5 << Mjt::Analysis::Pai.new('p6', false, false)
    mentsu5 = Mjt::Analysis::Mentsu.new(pai_list5, 's', false)
    pai_list6 = Array.new
    pai_list6 << Mjt::Analysis::Pai.new('j7', false, true)
    pai_list6 << Mjt::Analysis::Pai.new('j7', false, true)
    mentsu6 = Mjt::Analysis::Mentsu.new(pai_list6, 't', false)
    pai_list7 = Array.new
    pai_list7 << Mjt::Analysis::Pai.new('m9', false, true)
    pai_list7 << Mjt::Analysis::Pai.new('m9', false, true)
    pai_list7 << Mjt::Analysis::Pai.new('m9', false, true)
    mentsu7 = Mjt::Analysis::Mentsu.new(pai_list7, 'k', false)
    
    assert_equal mentsu1.ryanmen?, true
    assert_equal mentsu2.ryanmen?, false
    assert_equal mentsu3.ryanmen?, false
    assert_equal mentsu4.ryanmen?, true
    assert_equal mentsu5.ryanmen?, false
    assert_equal mentsu6.ryanmen?, false
    assert_equal mentsu7.ryanmen?, false
  end
  
  test "penchan" do
    pai_list1 = Array.new
    pai_list1 << Mjt::Analysis::Pai.new('m1', false, true)
    pai_list1 << Mjt::Analysis::Pai.new('m2', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu1 = Mjt::Analysis::Mentsu.new(pai_list1, 's', false)
    pai_list2 = Array.new
    pai_list2 << Mjt::Analysis::Pai.new('p1', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p2', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p3', false, true)
    mentsu2 = Mjt::Analysis::Mentsu.new(pai_list2, 's', false)
    pai_list3 = Array.new
    pai_list3 << Mjt::Analysis::Pai.new('s7', false, true)
    pai_list3 << Mjt::Analysis::Pai.new('s8', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s9', false, false)
    mentsu3 = Mjt::Analysis::Mentsu.new(pai_list3, 's', false)
    pai_list4 = Array.new
    pai_list4 << Mjt::Analysis::Pai.new('m7', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('m8', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('m9', false, true)
    mentsu4 = Mjt::Analysis::Mentsu.new(pai_list4, 's', false)
    pai_list5 = Array.new
    pai_list5 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list5 << Mjt::Analysis::Pai.new('p5', false, true)
    pai_list5 << Mjt::Analysis::Pai.new('p6', false, false)
    mentsu5 = Mjt::Analysis::Mentsu.new(pai_list5, 's', false)
    pai_list6 = Array.new
    pai_list6 << Mjt::Analysis::Pai.new('j7', false, true)
    pai_list6 << Mjt::Analysis::Pai.new('j7', false, true)
    mentsu6 = Mjt::Analysis::Mentsu.new(pai_list6, 't', false)
    pai_list7 = Array.new
    pai_list7 << Mjt::Analysis::Pai.new('m9', false, true)
    pai_list7 << Mjt::Analysis::Pai.new('m9', false, true)
    pai_list7 << Mjt::Analysis::Pai.new('m9', false, true)
    mentsu7 = Mjt::Analysis::Mentsu.new(pai_list7, 'k', false)
    
    assert_equal mentsu1.penchan?, false
    assert_equal mentsu2.penchan?, true
    assert_equal mentsu3.penchan?, true
    assert_equal mentsu4.penchan?, false
    assert_equal mentsu5.penchan?, false
    assert_equal mentsu6.penchan?, false
    assert_equal mentsu7.penchan?, false
  end
  
  test "kanchan" do
    pai_list1 = Array.new
    pai_list1 << Mjt::Analysis::Pai.new('m1', false, true)
    pai_list1 << Mjt::Analysis::Pai.new('m2', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu1 = Mjt::Analysis::Mentsu.new(pai_list1, 's', false)
    pai_list2 = Array.new
    pai_list2 << Mjt::Analysis::Pai.new('p1', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p2', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p3', false, true)
    mentsu2 = Mjt::Analysis::Mentsu.new(pai_list2, 's', false)
    pai_list3 = Array.new
    pai_list3 << Mjt::Analysis::Pai.new('s7', false, true)
    pai_list3 << Mjt::Analysis::Pai.new('s8', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s9', false, false)
    mentsu3 = Mjt::Analysis::Mentsu.new(pai_list3, 's', false)
    pai_list4 = Array.new
    pai_list4 << Mjt::Analysis::Pai.new('m7', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('m8', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('m9', false, true)
    mentsu4 = Mjt::Analysis::Mentsu.new(pai_list4, 's', false)
    pai_list5 = Array.new
    pai_list5 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list5 << Mjt::Analysis::Pai.new('p5', false, true)
    pai_list5 << Mjt::Analysis::Pai.new('p6', false, false)
    mentsu5 = Mjt::Analysis::Mentsu.new(pai_list5, 's', false)
    pai_list6 = Array.new
    pai_list6 << Mjt::Analysis::Pai.new('j7', false, true)
    pai_list6 << Mjt::Analysis::Pai.new('j7', false, true)
    mentsu6 = Mjt::Analysis::Mentsu.new(pai_list6, 't', false)
    pai_list7 = Array.new
    pai_list7 << Mjt::Analysis::Pai.new('m9', false, true)
    pai_list7 << Mjt::Analysis::Pai.new('m9', false, true)
    pai_list7 << Mjt::Analysis::Pai.new('m9', false, true)
    mentsu7 = Mjt::Analysis::Mentsu.new(pai_list7, 'k', false)
    
    assert_equal mentsu1.kanchan?, false
    assert_equal mentsu2.kanchan?, false
    assert_equal mentsu3.kanchan?, false
    assert_equal mentsu4.kanchan?, false
    assert_equal mentsu5.kanchan?, true
    assert_equal mentsu6.kanchan?, false
    assert_equal mentsu7.kanchan?, false
  end
  
  test "tanki" do
    pai_list1 = Array.new
    pai_list1 << Mjt::Analysis::Pai.new('m1', false, true)
    pai_list1 << Mjt::Analysis::Pai.new('m2', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu1 = Mjt::Analysis::Mentsu.new(pai_list1, 's', false)
    pai_list2 = Array.new
    pai_list2 << Mjt::Analysis::Pai.new('p1', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p2', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p3', false, true)
    mentsu2 = Mjt::Analysis::Mentsu.new(pai_list2, 's', false)
    pai_list3 = Array.new
    pai_list3 << Mjt::Analysis::Pai.new('s7', false, true)
    pai_list3 << Mjt::Analysis::Pai.new('s8', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s9', false, false)
    mentsu3 = Mjt::Analysis::Mentsu.new(pai_list3, 's', false)
    pai_list4 = Array.new
    pai_list4 << Mjt::Analysis::Pai.new('m7', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('m8', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('m9', false, true)
    mentsu4 = Mjt::Analysis::Mentsu.new(pai_list4, 's', false)
    pai_list5 = Array.new
    pai_list5 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list5 << Mjt::Analysis::Pai.new('p5', false, true)
    pai_list5 << Mjt::Analysis::Pai.new('p6', false, false)
    mentsu5 = Mjt::Analysis::Mentsu.new(pai_list5, 's', false)
    pai_list6 = Array.new
    pai_list6 << Mjt::Analysis::Pai.new('j7', false, true)
    pai_list6 << Mjt::Analysis::Pai.new('j7', false, true)
    mentsu6 = Mjt::Analysis::Mentsu.new(pai_list6, 't', false)
    pai_list7 = Array.new
    pai_list7 << Mjt::Analysis::Pai.new('m9', false, true)
    pai_list7 << Mjt::Analysis::Pai.new('m9', false, true)
    pai_list7 << Mjt::Analysis::Pai.new('m9', false, true)
    mentsu7 = Mjt::Analysis::Mentsu.new(pai_list7, 'k', false)
    
    assert_equal mentsu1.tanki?, false
    assert_equal mentsu2.tanki?, false
    assert_equal mentsu3.tanki?, false
    assert_equal mentsu4.tanki?, false
    assert_equal mentsu5.tanki?, false
    assert_equal mentsu6.tanki?, true
    assert_equal mentsu7.tanki?, false
  end
  
  test "shanpon" do
    pai_list1 = Array.new
    pai_list1 << Mjt::Analysis::Pai.new('m1', false, true)
    pai_list1 << Mjt::Analysis::Pai.new('m2', false, false)
    pai_list1 << Mjt::Analysis::Pai.new('m3', false, false)
    mentsu1 = Mjt::Analysis::Mentsu.new(pai_list1, 's', false)
    pai_list2 = Array.new
    pai_list2 << Mjt::Analysis::Pai.new('p1', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p2', false, false)
    pai_list2 << Mjt::Analysis::Pai.new('p3', false, true)
    mentsu2 = Mjt::Analysis::Mentsu.new(pai_list2, 's', false)
    pai_list3 = Array.new
    pai_list3 << Mjt::Analysis::Pai.new('s7', false, true)
    pai_list3 << Mjt::Analysis::Pai.new('s8', false, false)
    pai_list3 << Mjt::Analysis::Pai.new('s9', false, false)
    mentsu3 = Mjt::Analysis::Mentsu.new(pai_list3, 's', false)
    pai_list4 = Array.new
    pai_list4 << Mjt::Analysis::Pai.new('m7', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('m8', false, false)
    pai_list4 << Mjt::Analysis::Pai.new('m9', false, true)
    mentsu4 = Mjt::Analysis::Mentsu.new(pai_list4, 's', false)
    pai_list5 = Array.new
    pai_list5 << Mjt::Analysis::Pai.new('p4', false, false)
    pai_list5 << Mjt::Analysis::Pai.new('p5', false, true)
    pai_list5 << Mjt::Analysis::Pai.new('p6', false, false)
    mentsu5 = Mjt::Analysis::Mentsu.new(pai_list5, 's', false)
    pai_list6 = Array.new
    pai_list6 << Mjt::Analysis::Pai.new('j7', false, true)
    pai_list6 << Mjt::Analysis::Pai.new('j7', false, true)
    mentsu6 = Mjt::Analysis::Mentsu.new(pai_list6, 't', false)
    pai_list7 = Array.new
    pai_list7 << Mjt::Analysis::Pai.new('m9', false, true)
    pai_list7 << Mjt::Analysis::Pai.new('m9', false, true)
    pai_list7 << Mjt::Analysis::Pai.new('m9', false, true)
    mentsu7 = Mjt::Analysis::Mentsu.new(pai_list7, 'k', false)
    
    assert_equal mentsu1.shanpon?, false
    assert_equal mentsu2.shanpon?, false
    assert_equal mentsu3.shanpon?, false
    assert_equal mentsu4.shanpon?, false
    assert_equal mentsu5.shanpon?, false
    assert_equal mentsu6.shanpon?, false
    assert_equal mentsu7.shanpon?, true
  end
end

