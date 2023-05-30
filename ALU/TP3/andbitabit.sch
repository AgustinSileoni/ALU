<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="B(3)">
        </signal>
        <signal name="A(3)">
        </signal>
        <signal name="B(2)">
        </signal>
        <signal name="A(2)">
        </signal>
        <signal name="A(3:0)" />
        <signal name="A(0)" />
        <signal name="A(1)" />
        <signal name="B(3:0)" />
        <signal name="B(1)" />
        <signal name="B(0)" />
        <signal name="O(3:0)" />
        <signal name="O(3)" />
        <signal name="O(2)" />
        <signal name="O(1)" />
        <signal name="O(0)" />
        <port polarity="Input" name="A(3:0)" />
        <port polarity="Input" name="B(3:0)" />
        <port polarity="Output" name="O(3:0)" />
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
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="B(3)" name="I0" />
            <blockpin signalname="A(3)" name="I1" />
            <blockpin signalname="O(3)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="B(2)" name="I0" />
            <blockpin signalname="A(2)" name="I1" />
            <blockpin signalname="O(2)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="B(1)" name="I0" />
            <blockpin signalname="A(1)" name="I1" />
            <blockpin signalname="O(1)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="B(0)" name="I0" />
            <blockpin signalname="A(0)" name="I1" />
            <blockpin signalname="O(0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="896" y="1584" name="XLXI_2" orien="R0" />
        <instance x="896" y="1760" name="XLXI_3" orien="R0" />
        <instance x="896" y="1920" name="XLXI_4" orien="R0" />
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1520" type="branch" />
            <wire x2="800" y1="1520" y2="1520" x1="768" />
            <wire x2="864" y1="1520" y2="1520" x1="800" />
            <wire x2="896" y1="1520" y2="1520" x1="864" />
        </branch>
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="720" y="1456" type="branch" />
            <wire x2="720" y1="1456" y2="1456" x1="640" />
            <wire x2="864" y1="1456" y2="1456" x1="720" />
            <wire x2="896" y1="1456" y2="1456" x1="864" />
        </branch>
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1696" type="branch" />
            <wire x2="800" y1="1696" y2="1696" x1="768" />
            <wire x2="864" y1="1696" y2="1696" x1="800" />
            <wire x2="896" y1="1696" y2="1696" x1="864" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="720" y="1632" type="branch" />
            <wire x2="720" y1="1632" y2="1632" x1="640" />
            <wire x2="864" y1="1632" y2="1632" x1="720" />
            <wire x2="896" y1="1632" y2="1632" x1="864" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="720" y="1792" type="branch" />
            <wire x2="720" y1="1792" y2="1792" x1="640" />
            <wire x2="864" y1="1792" y2="1792" x1="720" />
            <wire x2="896" y1="1792" y2="1792" x1="864" />
        </branch>
        <instance x="896" y="2080" name="XLXI_5" orien="R0" />
        <branch name="A(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1328" type="branch" />
            <wire x2="544" y1="1216" y2="1312" x1="544" />
            <wire x2="544" y1="1312" y2="1328" x1="544" />
            <wire x2="544" y1="1328" y2="1456" x1="544" />
            <wire x2="544" y1="1456" y2="1632" x1="544" />
            <wire x2="544" y1="1632" y2="1792" x1="544" />
            <wire x2="544" y1="1792" y2="1824" x1="544" />
            <wire x2="544" y1="1824" y2="1952" x1="544" />
            <wire x2="544" y1="1952" y2="2080" x1="544" />
        </branch>
        <bustap x2="640" y1="1792" y2="1792" x1="544" />
        <bustap x2="640" y1="1952" y2="1952" x1="544" />
        <bustap x2="640" y1="1632" y2="1632" x1="544" />
        <bustap x2="640" y1="1456" y2="1456" x1="544" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="720" y="1952" type="branch" />
            <wire x2="720" y1="1952" y2="1952" x1="640" />
            <wire x2="896" y1="1952" y2="1952" x1="720" />
        </branch>
        <branch name="B(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="672" y="1328" type="branch" />
            <wire x2="672" y1="1216" y2="1328" x1="672" />
            <wire x2="672" y1="1328" y2="1520" x1="672" />
            <wire x2="672" y1="1520" y2="1696" x1="672" />
            <wire x2="672" y1="1696" y2="1712" x1="672" />
            <wire x2="672" y1="1712" y2="1856" x1="672" />
            <wire x2="672" y1="1856" y2="2016" x1="672" />
            <wire x2="672" y1="2016" y2="2096" x1="672" />
        </branch>
        <bustap x2="768" y1="1520" y2="1520" x1="672" />
        <bustap x2="768" y1="1696" y2="1696" x1="672" />
        <bustap x2="768" y1="1856" y2="1856" x1="672" />
        <bustap x2="768" y1="2016" y2="2016" x1="672" />
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1856" type="branch" />
            <wire x2="800" y1="1856" y2="1856" x1="768" />
            <wire x2="896" y1="1856" y2="1856" x1="800" />
        </branch>
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="800" y="2016" type="branch" />
            <wire x2="800" y1="2016" y2="2016" x1="768" />
            <wire x2="896" y1="2016" y2="2016" x1="800" />
        </branch>
        <branch name="O(3:0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1328" type="branch" />
            <wire x2="1312" y1="1248" y2="1328" x1="1312" />
            <wire x2="1312" y1="1328" y2="1488" x1="1312" />
            <wire x2="1312" y1="1488" y2="1664" x1="1312" />
            <wire x2="1312" y1="1664" y2="1824" x1="1312" />
            <wire x2="1312" y1="1824" y2="1984" x1="1312" />
            <wire x2="1312" y1="1984" y2="2096" x1="1312" />
        </branch>
        <bustap x2="1216" y1="1488" y2="1488" x1="1312" />
        <bustap x2="1216" y1="1664" y2="1664" x1="1312" />
        <bustap x2="1216" y1="1824" y2="1824" x1="1312" />
        <bustap x2="1216" y1="1984" y2="1984" x1="1312" />
        <branch name="O(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="1488" type="branch" />
            <wire x2="1168" y1="1488" y2="1488" x1="1152" />
            <wire x2="1216" y1="1488" y2="1488" x1="1168" />
        </branch>
        <branch name="O(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="1664" type="branch" />
            <wire x2="1168" y1="1664" y2="1664" x1="1152" />
            <wire x2="1216" y1="1664" y2="1664" x1="1168" />
        </branch>
        <branch name="O(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="1824" type="branch" />
            <wire x2="1168" y1="1824" y2="1824" x1="1152" />
            <wire x2="1216" y1="1824" y2="1824" x1="1168" />
        </branch>
        <branch name="O(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1168" y="1984" type="branch" />
            <wire x2="1168" y1="1984" y2="1984" x1="1152" />
            <wire x2="1216" y1="1984" y2="1984" x1="1168" />
        </branch>
        <iomarker fontsize="28" x="544" y="1216" name="A(3:0)" orien="R270" />
        <iomarker fontsize="28" x="672" y="1216" name="B(3:0)" orien="R270" />
        <iomarker fontsize="28" x="1312" y="1248" name="O(3:0)" orien="R270" />
    </sheet>
</drawing>