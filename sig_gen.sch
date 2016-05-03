<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_2(7:0)" />
        <signal name="XLXN_3(7:0)" />
        <port polarity="Output" name="XLXN_2(7:0)" />
        <port polarity="Input" name="XLXN_3(7:0)" />
        <blockdef name="sine_wave">
            <timestamp>2016-4-25T6:37:19</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="peak_detector">
            <timestamp>2016-4-25T6:42:24</timestamp>
            <rect width="288" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
        </blockdef>
        <block symbolname="sine_wave" name="XLXI_1">
            <blockpin name="clk" />
            <blockpin signalname="XLXN_1(7:0)" name="sig_out(7:0)" />
        </block>
        <block symbolname="peak_detector" name="XLXI_2">
            <blockpin signalname="XLXN_1(7:0)" name="sig_in(7:0)" />
            <blockpin signalname="XLXN_3(7:0)" name="threshold(7:0)" />
            <blockpin signalname="XLXN_2(7:0)" name="sig_out(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1984" y="816" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1408" y="752" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1(7:0)">
            <wire x2="1984" y1="720" y2="720" x1="1792" />
        </branch>
        <branch name="XLXN_2(7:0)">
            <wire x2="2416" y1="720" y2="720" x1="2400" />
            <wire x2="2544" y1="720" y2="720" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2544" y="720" name="XLXN_2(7:0)" orien="R0" />
        <branch name="XLXN_3(7:0)">
            <wire x2="1984" y1="784" y2="784" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="1952" y="784" name="XLXN_3(7:0)" orien="R180" />
    </sheet>
</drawing>