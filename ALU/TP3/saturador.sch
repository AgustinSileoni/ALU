<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(2)" />
        <signal name="A(1)" />
        <signal name="A(0)" />
        <signal name="A(3:0)" />
        <signal name="A(3)" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="S">
        </signal>
        <signal name="O(0)" />
        <signal name="O(1)" />
        <signal name="O(2)" />
        <signal name="O(3)" />
        <signal name="O(3:0)" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79" />
        <signal name="XLXN_80" />
        <signal name="XLXN_81" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="Ovf" />
        <signal name="XLXN_87" />
        <signal name="Sat" />
        <port polarity="Input" name="A(3:0)" />
        <port polarity="Output" name="O(3:0)" />
        <port polarity="Input" name="Ovf" />
        <port polarity="Input" name="Sat" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="m2_1" name="XLXI_16">
            <blockpin signalname="A(3)" name="D0" />
            <blockpin signalname="XLXN_45" name="D1" />
            <blockpin signalname="S" name="S0" />
            <blockpin signalname="O(3)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_17">
            <blockpin signalname="A(2)" name="D0" />
            <blockpin signalname="XLXN_46" name="D1" />
            <blockpin signalname="S" name="S0" />
            <blockpin signalname="O(2)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_18">
            <blockpin signalname="A(1)" name="D0" />
            <blockpin signalname="XLXN_47" name="D1" />
            <blockpin signalname="S" name="S0" />
            <blockpin signalname="O(1)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_19">
            <blockpin signalname="A(0)" name="D0" />
            <blockpin signalname="XLXN_48" name="D1" />
            <blockpin signalname="S" name="S0" />
            <blockpin signalname="O(0)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_20">
            <blockpin signalname="XLXN_73" name="D0" />
            <blockpin signalname="XLXN_79" name="D1" />
            <blockpin signalname="A(3)" name="S0" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_21">
            <blockpin signalname="XLXN_79" name="D0" />
            <blockpin signalname="XLXN_73" name="D1" />
            <blockpin signalname="A(3)" name="S0" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_22">
            <blockpin signalname="XLXN_79" name="D0" />
            <blockpin signalname="XLXN_73" name="D1" />
            <blockpin signalname="A(3)" name="S0" />
            <blockpin signalname="XLXN_47" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_23">
            <blockpin signalname="XLXN_79" name="D0" />
            <blockpin signalname="XLXN_73" name="D1" />
            <blockpin signalname="A(3)" name="S0" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_26">
            <blockpin signalname="Ovf" name="I0" />
            <blockpin signalname="Sat" name="I1" />
            <blockpin signalname="S" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_28">
            <blockpin signalname="XLXN_73" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_29">
            <blockpin signalname="XLXN_79" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="928" type="branch" />
            <wire x2="1248" y1="928" y2="928" x1="1184" />
            <wire x2="1520" y1="928" y2="928" x1="1248" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1184" type="branch" />
            <wire x2="1248" y1="1184" y2="1184" x1="1184" />
            <wire x2="1520" y1="1184" y2="1184" x1="1248" />
        </branch>
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1456" type="branch" />
            <wire x2="1248" y1="1456" y2="1456" x1="1184" />
            <wire x2="1504" y1="1456" y2="1456" x1="1248" />
        </branch>
        <branch name="A(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="416" type="branch" />
            <wire x2="1088" y1="368" y2="416" x1="1088" />
            <wire x2="1088" y1="416" y2="656" x1="1088" />
            <wire x2="1088" y1="656" y2="928" x1="1088" />
            <wire x2="1088" y1="928" y2="1184" x1="1088" />
            <wire x2="1088" y1="1184" y2="1456" x1="1088" />
        </branch>
        <bustap x2="1184" y1="656" y2="656" x1="1088" />
        <bustap x2="1184" y1="928" y2="928" x1="1088" />
        <bustap x2="1184" y1="1184" y2="1184" x1="1088" />
        <bustap x2="1184" y1="1456" y2="1456" x1="1088" />
        <iomarker fontsize="28" x="1088" y="368" name="A(3:0)" orien="R270" />
        <instance x="1520" y="816" name="XLXI_16" orien="R0" />
        <instance x="1520" y="1088" name="XLXI_17" orien="R0" />
        <instance x="1520" y="1344" name="XLXI_18" orien="R0" />
        <instance x="1504" y="1616" name="XLXI_19" orien="R0" />
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="656" type="branch" />
            <wire x2="528" y1="816" y2="816" x1="480" />
            <wire x2="576" y1="816" y2="816" x1="528" />
            <wire x2="528" y1="816" y2="1088" x1="528" />
            <wire x2="576" y1="1088" y2="1088" x1="528" />
            <wire x2="528" y1="1088" y2="1344" x1="528" />
            <wire x2="576" y1="1344" y2="1344" x1="528" />
            <wire x2="528" y1="1344" y2="1616" x1="528" />
            <wire x2="576" y1="1616" y2="1616" x1="528" />
            <wire x2="480" y1="816" y2="1120" x1="480" />
            <wire x2="1184" y1="1120" y2="1120" x1="480" />
            <wire x2="1184" y1="656" y2="1120" x1="1184" />
            <wire x2="1296" y1="656" y2="656" x1="1184" />
            <wire x2="1520" y1="656" y2="656" x1="1296" />
        </branch>
        <instance x="576" y="848" name="XLXI_20" orien="R0" />
        <instance x="576" y="1120" name="XLXI_21" orien="R0" />
        <instance x="576" y="1376" name="XLXI_22" orien="R0" />
        <instance x="576" y="1648" name="XLXI_23" orien="R0" />
        <branch name="XLXN_45">
            <wire x2="1520" y1="720" y2="720" x1="896" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="1520" y1="992" y2="992" x1="896" />
        </branch>
        <branch name="XLXN_47">
            <wire x2="1520" y1="1248" y2="1248" x1="896" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="1504" y1="1520" y2="1520" x1="896" />
        </branch>
        <branch name="S">
            <wire x2="1440" y1="400" y2="784" x1="1440" />
            <wire x2="1520" y1="784" y2="784" x1="1440" />
            <wire x2="1440" y1="784" y2="1056" x1="1440" />
            <wire x2="1520" y1="1056" y2="1056" x1="1440" />
            <wire x2="1440" y1="1056" y2="1312" x1="1440" />
            <wire x2="1520" y1="1312" y2="1312" x1="1440" />
            <wire x2="1440" y1="1312" y2="1584" x1="1440" />
            <wire x2="1504" y1="1584" y2="1584" x1="1440" />
        </branch>
        <branch name="O(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2192" y="1488" type="branch" />
            <wire x2="2176" y1="1488" y2="1488" x1="1824" />
            <wire x2="2192" y1="1488" y2="1488" x1="2176" />
            <wire x2="2272" y1="1488" y2="1488" x1="2192" />
        </branch>
        <branch name="O(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="1216" type="branch" />
            <wire x2="2160" y1="1216" y2="1216" x1="1840" />
            <wire x2="2176" y1="1216" y2="1216" x1="2160" />
            <wire x2="2272" y1="1216" y2="1216" x1="2176" />
        </branch>
        <branch name="O(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="960" type="branch" />
            <wire x2="2160" y1="960" y2="960" x1="1840" />
            <wire x2="2176" y1="960" y2="960" x1="2160" />
            <wire x2="2272" y1="960" y2="960" x1="2176" />
        </branch>
        <branch name="O(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2176" y="688" type="branch" />
            <wire x2="2160" y1="688" y2="688" x1="1840" />
            <wire x2="2176" y1="688" y2="688" x1="2160" />
            <wire x2="2272" y1="688" y2="688" x1="2176" />
        </branch>
        <bustap x2="2272" y1="688" y2="688" x1="2368" />
        <bustap x2="2272" y1="960" y2="960" x1="2368" />
        <bustap x2="2272" y1="1488" y2="1488" x1="2368" />
        <bustap x2="2272" y1="1216" y2="1216" x1="2368" />
        <branch name="O(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2368" y="1072" type="branch" />
            <wire x2="2368" y1="576" y2="688" x1="2368" />
            <wire x2="2368" y1="688" y2="960" x1="2368" />
            <wire x2="2368" y1="960" y2="1072" x1="2368" />
            <wire x2="2368" y1="1072" y2="1216" x1="2368" />
            <wire x2="2368" y1="1216" y2="1488" x1="2368" />
            <wire x2="2368" y1="1488" y2="1504" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="2368" y="576" name="O(3:0)" orien="R270" />
        <branch name="XLXN_73">
            <wire x2="560" y1="592" y2="688" x1="560" />
            <wire x2="576" y1="688" y2="688" x1="560" />
            <wire x2="560" y1="688" y2="1024" x1="560" />
            <wire x2="576" y1="1024" y2="1024" x1="560" />
            <wire x2="560" y1="1024" y2="1280" x1="560" />
            <wire x2="576" y1="1280" y2="1280" x1="560" />
            <wire x2="560" y1="1280" y2="1552" x1="560" />
            <wire x2="576" y1="1552" y2="1552" x1="560" />
            <wire x2="624" y1="592" y2="592" x1="560" />
            <wire x2="624" y1="512" y2="592" x1="624" />
        </branch>
        <branch name="XLXN_79">
            <wire x2="544" y1="432" y2="752" x1="544" />
            <wire x2="576" y1="752" y2="752" x1="544" />
            <wire x2="544" y1="752" y2="960" x1="544" />
            <wire x2="576" y1="960" y2="960" x1="544" />
            <wire x2="544" y1="960" y2="1216" x1="544" />
            <wire x2="576" y1="1216" y2="1216" x1="544" />
            <wire x2="544" y1="1216" y2="1488" x1="544" />
            <wire x2="576" y1="1488" y2="1488" x1="544" />
        </branch>
        <instance x="1344" y="144" name="XLXI_26" orien="R90" />
        <branch name="Ovf">
            <wire x2="1408" y1="112" y2="144" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="1408" y="112" name="Ovf" orien="R270" />
        <branch name="Sat">
            <wire x2="1472" y1="112" y2="144" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="1472" y="112" name="Sat" orien="R270" />
        <instance x="608" y="304" name="XLXI_29" orien="R180" />
        <instance x="560" y="512" name="XLXI_28" orien="R0" />
    </sheet>
</drawing>