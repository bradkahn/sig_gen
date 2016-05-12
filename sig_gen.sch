<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_8(15:0)" />
        <signal name="mode" />
        <signal name="read_nwrite" />
        <signal name="enable" />
        <signal name="threshold(15:0)" />
        <signal name="peak_det_out(15:0)" />
        <signal name="gpmc_clk" />
        <signal name="waveform_ctrl(13:11)" />
        <signal name="XLXN_24(15:0)" />
        <signal name="XLXN_36" />
        <signal name="sys_clk_P" />
        <signal name="sys_clk_N" />
        <signal name="waveform_ctrl(2:0)" />
        <signal name="waveform_ctrl(10:3)" />
        <signal name="gpmc_clk_i" />
        <signal name="gpmc_n_we" />
        <signal name="gpmc_n_oe" />
        <signal name="gpmc_n_adv_ale" />
        <signal name="gpmc_n_wp" />
        <signal name="gpmc_a(10:1)" />
        <signal name="gpmc_n_cs(6:0)" />
        <signal name="gpmc_d(15:0)" />
        <signal name="waveform_ctrl(15:0)" />
        <port polarity="Input" name="mode" />
        <port polarity="Input" name="read_nwrite" />
        <port polarity="Input" name="enable" />
        <port polarity="Output" name="peak_det_out(15:0)" />
        <port polarity="Input" name="sys_clk_P" />
        <port polarity="Input" name="sys_clk_N" />
        <port polarity="Input" name="gpmc_clk_i" />
        <port polarity="Input" name="gpmc_n_we" />
        <port polarity="Input" name="gpmc_n_oe" />
        <port polarity="Input" name="gpmc_n_adv_ale" />
        <port polarity="Input" name="gpmc_n_wp" />
        <port polarity="Input" name="gpmc_a(10:1)" />
        <port polarity="Input" name="gpmc_n_cs(6:0)" />
        <port polarity="BiDirectional" name="gpmc_d(15:0)" />
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
        <blockdef name="clk_divider">
            <timestamp>2016-5-11T7:37:17</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
        </blockdef>
        <blockdef name="gpmc">
            <timestamp>2016-5-11T10:12:30</timestamp>
            <rect width="64" x="448" y="84" height="24" />
            <line x2="512" y1="96" y2="96" x1="448" />
            <line x2="512" y1="32" y2="32" x1="448" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-300" height="24" />
            <line x2="512" y1="-288" y2="-288" x1="448" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
            <rect width="384" x="64" y="-576" height="704" />
        </blockdef>
        <block symbolname="fifo" name="XLXI_3">
            <blockpin signalname="XLXN_36" name="clk" />
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
            <blockpin signalname="waveform_ctrl(2:0)" name="waveform(2:0)" />
            <blockpin signalname="waveform_ctrl(13:11)" name="amplitude(2:0)" />
            <blockpin signalname="XLXN_8(15:0)" name="sig_out(15:0)" />
        </block>
        <block symbolname="clk_divider" name="XLXI_7">
            <blockpin signalname="sys_clk_P" name="sys_clk_P" />
            <blockpin signalname="sys_clk_N" name="sys_clk_N" />
            <blockpin signalname="waveform_ctrl(10:3)" name="freq_set(7:0)" />
            <blockpin signalname="XLXN_36" name="sample_rate_clk" />
        </block>
        <block symbolname="gpmc" name="XLXI_17">
            <blockpin signalname="gpmc_clk_i" name="gpmc_clk_i" />
            <blockpin signalname="gpmc_n_we" name="gpmc_n_we" />
            <blockpin signalname="gpmc_n_oe" name="gpmc_n_oe" />
            <blockpin signalname="gpmc_n_adv_ale" name="gpmc_n_adv_ale" />
            <blockpin signalname="gpmc_n_wp" name="gpmc_n_wp" />
            <blockpin signalname="gpmc_a(10:1)" name="gpmc_a(10:1)" />
            <blockpin signalname="gpmc_n_cs(6:0)" name="gpmc_n_cs(6:0)" />
            <blockpin signalname="gpmc_d(15:0)" name="gpmc_d(15:0)" />
            <blockpin signalname="gpmc_clk" name="gpmc_clk" />
            <blockpin signalname="threshold(15:0)" name="threshold(15:0)" />
            <blockpin signalname="waveform_ctrl(15:0)" name="waveform_ctrl(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_8(15:0)">
            <wire x2="1984" y1="1120" y2="1120" x1="1568" />
        </branch>
        <instance x="2720" y="896" name="XLXI_5" orien="R0">
        </instance>
        <branch name="mode">
            <wire x2="1984" y1="1056" y2="1056" x1="1824" />
        </branch>
        <branch name="read_nwrite">
            <wire x2="1984" y1="992" y2="992" x1="1904" />
        </branch>
        <branch name="enable">
            <wire x2="1984" y1="928" y2="928" x1="1840" />
        </branch>
        <branch name="threshold(15:0)">
            <wire x2="816" y1="592" y2="592" x1="736" />
            <wire x2="816" y1="352" y2="592" x1="816" />
            <wire x2="2688" y1="352" y2="352" x1="816" />
            <wire x2="2688" y1="352" y2="864" x1="2688" />
            <wire x2="2720" y1="864" y2="864" x1="2688" />
        </branch>
        <branch name="peak_det_out(15:0)">
            <wire x2="3200" y1="800" y2="800" x1="3168" />
        </branch>
        <branch name="gpmc_clk">
            <wire x2="832" y1="912" y2="912" x1="736" />
            <wire x2="832" y1="912" y2="1120" x1="832" />
            <wire x2="1088" y1="1120" y2="1120" x1="832" />
            <wire x2="1136" y1="1120" y2="1120" x1="1088" />
            <wire x2="1984" y1="864" y2="864" x1="1088" />
            <wire x2="1088" y1="864" y2="1120" x1="1088" />
        </branch>
        <branch name="XLXN_24(15:0)">
            <wire x2="2720" y1="800" y2="800" x1="2480" />
        </branch>
        <instance x="1184" y="608" name="XLXI_7" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3200" y="800" name="peak_det_out(15:0)" orien="R0" />
        <branch name="sys_clk_P">
            <wire x2="1184" y1="448" y2="448" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1152" y="448" name="sys_clk_P" orien="R180" />
        <branch name="sys_clk_N">
            <wire x2="1184" y1="512" y2="512" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1152" y="512" name="sys_clk_N" orien="R180" />
        <branch name="waveform_ctrl(10:3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1053" y="576" type="branch" />
            <wire x2="1056" y1="576" y2="576" x1="1008" />
            <wire x2="1184" y1="576" y2="576" x1="1056" />
        </branch>
        <branch name="gpmc_clk_i">
            <wire x2="224" y1="336" y2="336" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="336" name="gpmc_clk_i" orien="R180" />
        <branch name="gpmc_n_we">
            <wire x2="224" y1="400" y2="400" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="400" name="gpmc_n_we" orien="R180" />
        <branch name="gpmc_n_oe">
            <wire x2="224" y1="464" y2="464" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="464" name="gpmc_n_oe" orien="R180" />
        <branch name="gpmc_n_adv_ale">
            <wire x2="224" y1="528" y2="528" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="528" name="gpmc_n_adv_ale" orien="R180" />
        <branch name="gpmc_n_wp">
            <wire x2="224" y1="592" y2="592" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="592" name="gpmc_n_wp" orien="R180" />
        <branch name="gpmc_a(10:1)">
            <wire x2="224" y1="784" y2="784" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="784" name="gpmc_a(10:1)" orien="R180" />
        <branch name="gpmc_n_cs(6:0)">
            <wire x2="224" y1="848" y2="848" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="848" name="gpmc_n_cs(6:0)" orien="R180" />
        <branch name="gpmc_d(15:0)">
            <wire x2="768" y1="848" y2="848" x1="736" />
        </branch>
        <iomarker fontsize="28" x="768" y="848" name="gpmc_d(15:0)" orien="R0" />
        <iomarker fontsize="28" x="1824" y="1056" name="mode" orien="R180" />
        <iomarker fontsize="28" x="1904" y="992" name="read_nwrite" orien="R180" />
        <iomarker fontsize="28" x="1840" y="928" name="enable" orien="R180" />
        <branch name="waveform_ctrl(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="656" y="1184" type="branch" />
            <wire x2="800" y1="1184" y2="1184" x1="656" />
            <wire x2="800" y1="976" y2="976" x1="736" />
            <wire x2="800" y1="976" y2="1184" x1="800" />
        </branch>
        <instance x="224" y="880" name="XLXI_17" orien="R0">
        </instance>
        <instance x="1984" y="1152" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_36">
            <wire x2="1648" y1="448" y2="448" x1="1632" />
            <wire x2="1648" y1="448" y2="800" x1="1648" />
            <wire x2="1984" y1="800" y2="800" x1="1648" />
        </branch>
        <instance x="1136" y="1280" name="XLXI_6" orien="R0">
        </instance>
        <branch name="waveform_ctrl(2:0)">
            <wire x2="1136" y1="1184" y2="1184" x1="864" />
        </branch>
        <branch name="waveform_ctrl(13:11)">
            <wire x2="1136" y1="1248" y2="1248" x1="896" />
        </branch>
    </sheet>
</drawing>