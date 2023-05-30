<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CarryOut" />
        <signal name="Ovf" />
        <signal name="C3" />
        <signal name="C1" />
        <signal name="C2" />
        <signal name="C4" />
        <signal name="XLXN_7(3:0)" />
        <signal name="XLXN_8(3:0)" />
        <signal name="XLXN_9(3:0)" />
        <signal name="XLXN_10(3:0)" />
        <signal name="XLXN_11(3:0)" />
        <signal name="R(3:0)" />
        <signal name="A(3:0)" />
        <signal name="B(3:0)" />
        <port polarity="Output" name="CarryOut" />
        <port polarity="Output" name="Ovf" />
        <port polarity="Input" name="C3" />
        <port polarity="Input" name="C1" />
        <port polarity="Input" name="C2" />
        <port polarity="Input" name="C4" />
        <port polarity="Output" name="R(3:0)" />
        <port polarity="Input" name="A(3:0)" />
        <port polarity="Input" name="B(3:0)" />
        <blockdef name="orbitabit">
            <timestamp>2023-5-28T23:53:17</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="andbitabit">
            <timestamp>2023-5-29T2:46:8</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
        </blockdef>
        <blockdef name="sumador">
            <timestamp>2023-5-29T2:4:13</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="saturador">
            <timestamp>2023-5-29T23:28:18</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="muxal">
            <timestamp>2023-5-29T2:31:44</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="orbitabit" name="XLXI_1">
            <blockpin signalname="A(3:0)" name="A(3:0)" />
            <blockpin signalname="B(3:0)" name="B(3:0)" />
            <blockpin signalname="XLXN_9(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="andbitabit" name="XLXI_2">
            <blockpin signalname="A(3:0)" name="A(3:0)" />
            <blockpin signalname="B(3:0)" name="B(3:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="sumador" name="XLXI_3">
            <blockpin signalname="C2" name="res" />
            <blockpin signalname="A(3:0)" name="A(3:0)" />
            <blockpin signalname="B(3:0)" name="B(3:0)" />
            <blockpin signalname="CarryOut" name="Cout" />
            <blockpin signalname="Ovf" name="Ovf" />
            <blockpin signalname="XLXN_7(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="saturador" name="XLXI_4">
            <blockpin signalname="XLXN_7(3:0)" name="A(3:0)" />
            <blockpin signalname="XLXN_11(3:0)" name="O(3:0)" />
            <blockpin signalname="Ovf" name="Ovf" />
            <blockpin signalname="C3" name="Sat" />
        </block>
        <block symbolname="muxal" name="XLXI_5">
            <blockpin signalname="C1" name="S" />
            <blockpin signalname="XLXN_9(3:0)" name="A(3:0)" />
            <blockpin signalname="XLXN_8(3:0)" name="B(3:0)" />
            <blockpin signalname="XLXN_10(3:0)" name="O(3:0)" />
        </block>
        <block symbolname="muxal" name="XLXI_6">
            <blockpin signalname="C4" name="S" />
            <blockpin signalname="XLXN_10(3:0)" name="A(3:0)" />
            <blockpin signalname="XLXN_11(3:0)" name="B(3:0)" />
            <blockpin signalname="R(3:0)" name="O(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="864" y="1232" name="XLXI_1" orien="R0">
        </instance>
        <instance x="864" y="1440" name="XLXI_2" orien="R0">
        </instance>
        <instance x="864" y="1712" name="XLXI_3" orien="R0">
        </instance>
        <branch name="CarryOut">
            <wire x2="1280" y1="1552" y2="1552" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1552" name="CarryOut" orien="R0" />
        <branch name="Ovf">
            <wire x2="1264" y1="1616" y2="1616" x1="1248" />
            <wire x2="1328" y1="1616" y2="1616" x1="1264" />
            <wire x2="1264" y1="1616" y2="1648" x1="1264" />
            <wire x2="1488" y1="1648" y2="1648" x1="1264" />
            <wire x2="1648" y1="1616" y2="1616" x1="1488" />
            <wire x2="1488" y1="1616" y2="1648" x1="1488" />
        </branch>
        <instance x="1648" y="1712" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1664" y="1344" name="XLXI_5" orien="R0">
        </instance>
        <instance x="2192" y="1488" name="XLXI_6" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1328" y="1616" name="Ovf" orien="R0" />
        <branch name="C3">
            <wire x2="1648" y1="1680" y2="1680" x1="1616" />
        </branch>
        <iomarker fontsize="28" x="1616" y="1680" name="C3" orien="R180" />
        <branch name="C1">
            <wire x2="1664" y1="1184" y2="1184" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="1632" y="1184" name="C1" orien="R180" />
        <branch name="C2">
            <wire x2="864" y1="1552" y2="1552" x1="736" />
        </branch>
        <branch name="C4">
            <wire x2="2192" y1="1328" y2="1328" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="2160" y="1328" name="C4" orien="R180" />
        <branch name="XLXN_7(3:0)">
            <wire x2="1456" y1="1680" y2="1680" x1="1248" />
            <wire x2="1456" y1="1552" y2="1680" x1="1456" />
            <wire x2="1648" y1="1552" y2="1552" x1="1456" />
        </branch>
        <branch name="XLXN_8(3:0)">
            <wire x2="1456" y1="1344" y2="1344" x1="1248" />
            <wire x2="1456" y1="1312" y2="1344" x1="1456" />
            <wire x2="1664" y1="1312" y2="1312" x1="1456" />
        </branch>
        <branch name="XLXN_9(3:0)">
            <wire x2="1456" y1="1136" y2="1136" x1="1248" />
            <wire x2="1456" y1="1136" y2="1248" x1="1456" />
            <wire x2="1664" y1="1248" y2="1248" x1="1456" />
        </branch>
        <branch name="XLXN_10(3:0)">
            <wire x2="2176" y1="1184" y2="1184" x1="2048" />
            <wire x2="2176" y1="1184" y2="1392" x1="2176" />
            <wire x2="2192" y1="1392" y2="1392" x1="2176" />
        </branch>
        <branch name="XLXN_11(3:0)">
            <wire x2="2112" y1="1552" y2="1552" x1="2032" />
            <wire x2="2112" y1="1456" y2="1552" x1="2112" />
            <wire x2="2192" y1="1456" y2="1456" x1="2112" />
        </branch>
        <branch name="R(3:0)">
            <wire x2="2608" y1="1328" y2="1328" x1="2576" />
        </branch>
        <iomarker fontsize="28" x="2608" y="1328" name="R(3:0)" orien="R0" />
        <iomarker fontsize="28" x="736" y="1552" name="C2" orien="R180" />
        <branch name="A(3:0)">
            <wire x2="848" y1="1616" y2="1616" x1="720" />
            <wire x2="864" y1="1616" y2="1616" x1="848" />
            <wire x2="864" y1="1136" y2="1136" x1="848" />
            <wire x2="848" y1="1136" y2="1344" x1="848" />
            <wire x2="864" y1="1344" y2="1344" x1="848" />
            <wire x2="848" y1="1344" y2="1616" x1="848" />
        </branch>
        <branch name="B(3:0)">
            <wire x2="800" y1="1680" y2="1680" x1="720" />
            <wire x2="864" y1="1680" y2="1680" x1="800" />
            <wire x2="800" y1="1200" y2="1408" x1="800" />
            <wire x2="800" y1="1408" y2="1680" x1="800" />
            <wire x2="864" y1="1408" y2="1408" x1="800" />
            <wire x2="864" y1="1200" y2="1200" x1="800" />
        </branch>
        <iomarker fontsize="28" x="720" y="1616" name="A(3:0)" orien="R180" />
        <iomarker fontsize="28" x="720" y="1680" name="B(3:0)" orien="R180" />
    </sheet>
</drawing>