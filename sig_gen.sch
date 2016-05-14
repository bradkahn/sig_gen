<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_47" />
        <signal name="XLXN_50(15:0)" />
        <signal name="XLXN_61(7:0)" />
        <signal name="XLXN_62(7:0)" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_81" />
        <signal name="XLXN_84(15:0)" />
        <signal name="XLXN_105" />
        <signal name="XLXN_108(15:0)" />
        <signal name="XLXN_8(15:0)" />
        <signal name="mode" />
        <signal name="read_nwrite" />
        <signal name="enable" />
        <signal name="sys_clk_P" />
        <signal name="sys_clk_N" />
        <signal name="XLXN_36" />
        <signal name="gpmc_n_we" />
        <signal name="gpmc_n_oe" />
        <signal name="gpmc_n_adv_ale" />
        <signal name="gpmc_n_wp" />
        <signal name="gpmc_n_cs(6:0)" />
        <signal name="XLXN_24(15:0)" />
        <signal name="threshold(15:0)" />
        <signal name="gpmc_a(10:1)" />
        <signal name="gpmc_clk_i" />
        <signal name="XLXN_129" />
        <signal name="gpmc_clk" />
        <signal name="peak_det_out(15:0)" />
        <signal name="XLXN_132(15:0)" />
        <signal name="gpmc_d(15:0)" />
        <signal name="XLXN_58(2:0)" />
        <signal name="XLXN_59(2:0)" />
        <signal name="XLXN_60(15:0)" />
        <port polarity="Input" name="sys_clk_P" />
        <port polarity="Input" name="sys_clk_N" />
        <port polarity="Input" name="gpmc_n_we" />
        <port polarity="Input" name="gpmc_n_oe" />
        <port polarity="Input" name="gpmc_n_adv_ale" />
        <port polarity="Input" name="gpmc_n_wp" />
        <port polarity="Input" name="gpmc_n_cs(6:0)" />
        <port polarity="Input" name="gpmc_a(10:1)" />
        <port polarity="Input" name="gpmc_clk_i" />
        <port polarity="Output" name="peak_det_out(15:0)" />
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
        <blockdef name="gpmc">
            <timestamp>2016-5-14T21:10:25</timestamp>
            <line x2="512" y1="480" y2="480" x1="448" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="512" y1="160" y2="160" x1="448" />
            <line x2="512" y1="224" y2="224" x1="448" />
            <rect width="64" x="448" y="276" height="24" />
            <line x2="512" y1="288" y2="288" x1="448" />
            <rect width="64" x="448" y="340" height="24" />
            <line x2="512" y1="352" y2="352" x1="448" />
            <rect width="64" x="448" y="404" height="24" />
            <line x2="512" y1="416" y2="416" x1="448" />
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
            <rect width="384" x="64" y="-576" height="1088" />
        </blockdef>
        <blockdef name="clk_divider">
            <timestamp>2016-5-14T21:9:24</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
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
        <block symbolname="waveform_generator" name="XLXI_6">
            <blockpin signalname="gpmc_clk" name="clk" />
            <blockpin signalname="XLXN_59(2:0)" name="waveform(2:0)" />
            <blockpin signalname="XLXN_58(2:0)" name="amplitude(2:0)" />
            <blockpin signalname="XLXN_8(15:0)" name="sig_out(15:0)" />
        </block>
        <block symbolname="peak_detector" name="XLXI_5">
            <blockpin signalname="XLXN_24(15:0)" name="sig_in(15:0)" />
            <blockpin signalname="threshold(15:0)" name="threshold(15:0)" />
            <blockpin signalname="peak_det_out(15:0)" name="sig_out(15:0)" />
        </block>
        <block symbolname="gpmc" name="XLXI_14">
            <blockpin signalname="gpmc_clk_i" name="gpmc_clk_i" />
            <blockpin signalname="gpmc_n_we" name="gpmc_n_we" />
            <blockpin signalname="gpmc_n_oe" name="gpmc_n_oe" />
            <blockpin signalname="gpmc_n_adv_ale" name="gpmc_n_adv_ale" />
            <blockpin signalname="gpmc_n_wp" name="gpmc_n_wp" />
            <blockpin signalname="gpmc_a(10:1)" name="gpmc_a(10:1)" />
            <blockpin signalname="gpmc_n_cs(6:0)" name="gpmc_n_cs(6:0)" />
            <blockpin signalname="peak_det_out(15:0)" name="signal_output(15:0)" />
            <blockpin signalname="gpmc_d(15:0)" name="gpmc_d(15:0)" />
            <blockpin signalname="gpmc_clk" name="gpmc_clk" />
            <blockpin signalname="mode" name="mode" />
            <blockpin signalname="enable" name="enable" />
            <blockpin signalname="read_nwrite" name="read_nwrite" />
            <blockpin signalname="threshold(15:0)" name="threshold(15:0)" />
            <blockpin signalname="XLXN_60(15:0)" name="frequency(15:0)" />
            <blockpin signalname="XLXN_59(2:0)" name="waveform_sel(2:0)" />
            <blockpin signalname="XLXN_58(2:0)" name="amplitude(2:0)" />
        </block>
        <block symbolname="clk_divider" name="XLXI_15">
            <blockpin signalname="sys_clk_P" name="sys_clk_P" />
            <blockpin signalname="sys_clk_N" name="sys_clk_N" />
            <blockpin signalname="XLXN_60(15:0)" name="freq_set(15:0)" />
            <blockpin signalname="XLXN_36" name="sample_rate_clk" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_8(15:0)">
            <wire x2="2032" y1="1552" y2="1552" x1="1616" />
        </branch>
        <branch name="mode">
            <wire x2="1872" y1="1248" y2="1248" x1="816" />
            <wire x2="1872" y1="1248" y2="1488" x1="1872" />
            <wire x2="2032" y1="1488" y2="1488" x1="1872" />
        </branch>
        <branch name="read_nwrite">
            <wire x2="864" y1="1568" y2="1568" x1="816" />
            <wire x2="864" y1="1424" y2="1568" x1="864" />
            <wire x2="2032" y1="1424" y2="1424" x1="864" />
        </branch>
        <branch name="enable">
            <wire x2="816" y1="1312" y2="1328" x1="816" />
            <wire x2="2032" y1="1328" y2="1328" x1="816" />
            <wire x2="2032" y1="1328" y2="1360" x1="2032" />
        </branch>
        <branch name="sys_clk_P">
            <wire x2="1408" y1="976" y2="976" x1="1264" />
        </branch>
        <branch name="sys_clk_N">
            <wire x2="1408" y1="1040" y2="1040" x1="1264" />
        </branch>
        <instance x="2032" y="1584" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_36">
            <wire x2="2016" y1="976" y2="976" x1="1856" />
            <wire x2="2016" y1="976" y2="1232" x1="2016" />
            <wire x2="2032" y1="1232" y2="1232" x1="2016" />
        </branch>
        <instance x="1184" y="1712" name="XLXI_6" orien="R0">
        </instance>
        <branch name="gpmc_n_we">
            <wire x2="304" y1="608" y2="608" x1="256" />
        </branch>
        <branch name="gpmc_n_oe">
            <wire x2="304" y1="672" y2="672" x1="256" />
        </branch>
        <branch name="gpmc_n_adv_ale">
            <wire x2="304" y1="736" y2="736" x1="256" />
        </branch>
        <branch name="gpmc_n_wp">
            <wire x2="304" y1="800" y2="800" x1="256" />
        </branch>
        <branch name="gpmc_n_cs(6:0)">
            <wire x2="304" y1="1056" y2="1056" x1="256" />
        </branch>
        <branch name="XLXN_24(15:0)">
            <wire x2="2768" y1="1232" y2="1232" x1="2528" />
        </branch>
        <instance x="2768" y="1328" name="XLXI_5" orien="R0">
        </instance>
        <branch name="threshold(15:0)">
            <wire x2="2736" y1="800" y2="800" x1="816" />
            <wire x2="2736" y1="800" y2="1296" x1="2736" />
            <wire x2="2768" y1="1296" y2="1296" x1="2736" />
        </branch>
        <branch name="gpmc_a(10:1)">
            <wire x2="304" y1="992" y2="992" x1="256" />
        </branch>
        <branch name="gpmc_clk_i">
            <wire x2="304" y1="544" y2="544" x1="256" />
        </branch>
        <branch name="gpmc_clk">
            <wire x2="1040" y1="1120" y2="1120" x1="816" />
            <wire x2="1040" y1="1120" y2="1552" x1="1040" />
            <wire x2="1136" y1="1552" y2="1552" x1="1040" />
            <wire x2="1184" y1="1552" y2="1552" x1="1136" />
            <wire x2="2032" y1="1296" y2="1296" x1="1136" />
            <wire x2="1136" y1="1296" y2="1552" x1="1136" />
        </branch>
        <branch name="peak_det_out(15:0)">
            <wire x2="304" y1="1248" y2="1248" x1="224" />
            <wire x2="224" y1="1248" y2="1776" x1="224" />
            <wire x2="3232" y1="1776" y2="1776" x1="224" />
            <wire x2="3232" y1="1232" y2="1232" x1="3216" />
            <wire x2="3248" y1="1232" y2="1232" x1="3232" />
            <wire x2="3232" y1="1232" y2="1776" x1="3232" />
        </branch>
        <branch name="gpmc_d(15:0)">
            <wire x2="832" y1="1056" y2="1056" x1="816" />
        </branch>
        <branch name="XLXN_58(2:0)">
            <wire x2="992" y1="1504" y2="1504" x1="816" />
            <wire x2="992" y1="1504" y2="1680" x1="992" />
            <wire x2="1184" y1="1680" y2="1680" x1="992" />
        </branch>
        <branch name="XLXN_59(2:0)">
            <wire x2="1008" y1="1440" y2="1440" x1="816" />
            <wire x2="1008" y1="1440" y2="1616" x1="1008" />
            <wire x2="1184" y1="1616" y2="1616" x1="1008" />
        </branch>
        <branch name="XLXN_60(15:0)">
            <wire x2="1392" y1="1376" y2="1376" x1="816" />
            <wire x2="1392" y1="1104" y2="1376" x1="1392" />
            <wire x2="1408" y1="1104" y2="1104" x1="1392" />
        </branch>
        <instance x="304" y="1088" name="XLXI_14" orien="R0">
        </instance>
        <instance x="1408" y="1136" name="XLXI_15" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3248" y="1232" name="peak_det_out(15:0)" orien="R0" />
        <iomarker fontsize="28" x="832" y="1056" name="gpmc_d(15:0)" orien="R0" />
        <iomarker fontsize="28" x="1264" y="1040" name="sys_clk_N" orien="R180" />
        <iomarker fontsize="28" x="1264" y="976" name="sys_clk_P" orien="R180" />
        <iomarker fontsize="28" x="256" y="544" name="gpmc_clk_i" orien="R180" />
        <iomarker fontsize="28" x="256" y="608" name="gpmc_n_we" orien="R180" />
        <iomarker fontsize="28" x="256" y="672" name="gpmc_n_oe" orien="R180" />
        <iomarker fontsize="28" x="256" y="736" name="gpmc_n_adv_ale" orien="R180" />
        <iomarker fontsize="28" x="256" y="800" name="gpmc_n_wp" orien="R180" />
        <iomarker fontsize="28" x="256" y="992" name="gpmc_a(10:1)" orien="R180" />
        <iomarker fontsize="28" x="256" y="1056" name="gpmc_n_cs(6:0)" orien="R180" />
    </sheet>
</drawing>