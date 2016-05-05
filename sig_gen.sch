<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_8(15:0)" />
        <signal name="XLXN_9" />
        <signal name="XLXN_11(15:0)" />
        <signal name="mode" />
        <signal name="read_nwrite" />
        <signal name="enable" />
        <signal name="sample_rate_clk" />
        <signal name="threshold(15:0)" />
        <signal name="peak_det_out(15:0)" />
        <signal name="gpmc_clk" />
        <signal name="XLXN_21" />
        <signal name="waveform_sel(2:0)" />
        <signal name="amplitude(2:0)" />
        <signal name="XLXN_24(15:0)" />
        <port polarity="Input" name="mode" />
        <port polarity="Input" name="read_nwrite" />
        <port polarity="Input" name="enable" />
        <port polarity="Input" name="sample_rate_clk" />
        <port polarity="Input" name="threshold(15:0)" />
        <port polarity="Output" name="peak_det_out(15:0)" />
        <port polarity="Input" name="gpmc_clk" />
        <port polarity="Input" name="waveform_sel(2:0)" />
        <port polarity="Input" name="amplitude(2:0)" />
        <blockdef name="fifo">
            <timestamp>2016-5-5T7:18:41</timestamp>
            <rect width="368" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="432" y="-364" height="24" />
            <line x2="496" y1="-352" y2="-352" x1="432" />
        </blockdef>
        <blockdef name="peak_detector">
            <timestamp>2016-5-5T7:24:59</timestamp>
            <rect width="320" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
        </blockdef>
        <blockdef name="waveform_generator">
            <timestamp>2016-5-5T7:18:49</timestamp>
            <rect width="304" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
        </blockdef>
        <block symbolname="fifo" name="XLXI_3">
            <blockpin signalname="sample_rate_clk" name="clk" />
            <blockpin signalname="gpmc_clk" name="gpmc_clk" />
            <blockpin signalname="enable" name="enable" />
            <blockpin signalname="read_nwrite" name="read_nwrite" />
            <blockpin signalname="mode" name="mode" />
            <blockpin signalname="XLXN_8(15:0)" name="sample_in(15:0)" />
            <blockpin signalname="XLXN_24(15:0)" name="sample_out(15:0)" />
        </block>
        <block symbolname="peak_detector" name="XLXI_5">
            <blockpin signalname="XLXN_24(15:0)" name="sig_in(15:0)" />
            <blockpin signalname="threshold(15:0)" name="threshold(15:0)" />
            <blockpin signalname="peak_det_out(15:0)" name="sig_out(15:0)" />
        </block>
        <block symbolname="waveform_generator" name="XLXI_6">
            <blockpin signalname="gpmc_clk" name="clk" />
            <blockpin signalname="waveform_sel(2:0)" name="waveform(2:0)" />
            <blockpin signalname="amplitude(2:0)" name="amplitude(2:0)" />
            <blockpin signalname="XLXN_8(15:0)" name="sig_out(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1552" y="1104" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_8(15:0)">
            <wire x2="1536" y1="1072" y2="1072" x1="1104" />
            <wire x2="1552" y1="1072" y2="1072" x1="1536" />
        </branch>
        <instance x="2272" y="848" name="XLXI_5" orien="R0">
        </instance>
        <branch name="mode">
            <wire x2="1536" y1="1008" y2="1008" x1="1376" />
            <wire x2="1552" y1="1008" y2="1008" x1="1536" />
        </branch>
        <branch name="read_nwrite">
            <wire x2="1536" y1="944" y2="944" x1="1456" />
            <wire x2="1552" y1="944" y2="944" x1="1536" />
        </branch>
        <branch name="enable">
            <wire x2="1536" y1="880" y2="880" x1="1392" />
            <wire x2="1552" y1="880" y2="880" x1="1536" />
        </branch>
        <branch name="sample_rate_clk">
            <wire x2="1536" y1="752" y2="752" x1="1520" />
            <wire x2="1552" y1="752" y2="752" x1="1536" />
        </branch>
        <branch name="threshold(15:0)">
            <wire x2="2256" y1="816" y2="816" x1="2240" />
            <wire x2="2272" y1="816" y2="816" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2240" y="816" name="threshold(15:0)" orien="R180" />
        <branch name="peak_det_out(15:0)">
            <wire x2="2736" y1="752" y2="752" x1="2720" />
            <wire x2="2752" y1="752" y2="752" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2752" y="752" name="peak_det_out(15:0)" orien="R0" />
        <branch name="gpmc_clk">
            <wire x2="640" y1="1072" y2="1072" x1="384" />
            <wire x2="672" y1="1072" y2="1072" x1="640" />
            <wire x2="640" y1="816" y2="1072" x1="640" />
            <wire x2="1552" y1="816" y2="816" x1="640" />
        </branch>
        <instance x="672" y="1232" name="XLXI_6" orien="R0">
        </instance>
        <branch name="waveform_sel(2:0)">
            <wire x2="672" y1="1136" y2="1136" x1="496" />
        </branch>
        <branch name="amplitude(2:0)">
            <wire x2="672" y1="1200" y2="1200" x1="448" />
        </branch>
        <iomarker fontsize="28" x="384" y="1072" name="gpmc_clk" orien="R180" />
        <iomarker fontsize="28" x="496" y="1136" name="waveform_sel(2:0)" orien="R180" />
        <iomarker fontsize="28" x="448" y="1200" name="amplitude(2:0)" orien="R180" />
        <branch name="XLXN_24(15:0)">
            <wire x2="2272" y1="752" y2="752" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="1520" y="752" name="sample_rate_clk" orien="R180" />
        <iomarker fontsize="28" x="1392" y="880" name="enable" orien="R180" />
        <iomarker fontsize="28" x="1456" y="944" name="read_nwrite" orien="R180" />
        <iomarker fontsize="28" x="1376" y="1008" name="mode" orien="R180" />
    </sheet>
</drawing>