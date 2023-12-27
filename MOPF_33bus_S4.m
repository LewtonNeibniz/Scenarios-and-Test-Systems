function mpc = MOPF_33bus_S4
%MOPF_33bus_S4  Power flow data for modified 33 bus distribution system.
%   Please see CASEFORMAT for details on the case file format.


%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 10;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [ %% (Pd and Qd are specified in kW & kVAr here, converted to MW & MVAr below)
	1	3	0	0	0	0	1	1	0	12.66	1	1	1;
	2	1	100	60	0	0	1	1	0	12.66	1	1.1	0.9;
	3	1	90	40	0	0	1	1	0	12.66	1	1.1	0.9;
	4	1	120	80	0	0	1	1	0	12.66	1	1.1	0.9;
	5	1	60	30	0	0	1	1	0	12.66	1	1.1	0.9;
	6	1	60	20	0	0	1	1	0	12.66	1	1.1	0.9;
	7	1	200	100	0	0	1	1	0	12.66	1	1.1	0.9;
	8	1	200	100	0	0	1	1	0	12.66	1	1.1	0.9;
	9	1	60	20	0	0	1	1	0	12.66	1	1.1	0.9;
	10	1	60	20	0	0	1	1	0	12.66	1	1.1	0.9;
	11	1	45	30	0	0	1	1	0	12.66	1	1.1	0.9;
	12	1	60	35	0	0	1	1	0	12.66	1	1.1	0.9;
	13	1	60	35	0	0	1	1	0	12.66	1	1.1	0.9;
	14	1	120	80	0	0	1	1	0	12.66	1	1.1	0.9;
	15	1	60	10	0	0	1	1	0	12.66	1	1.1	0.9;
	16	1	60	20	0	0	1	1	0	12.66	1	1.1	0.9;
	17	1	60	20	0	0	1	1	0	12.66	1	1.1	0.9;
	18	1	90	40	0	0	1	1	0	12.66	1	1.1	0.9;
	19	1	90	40	0	0	1	1	0	12.66	1	1.1	0.9;
	20	1	90	40	0	0	1	1	0	12.66	1	1.1	0.9;
	21	1	90	40	0	0	1	1	0	12.66	1	1.1	0.9;
	22	1	90	40	0	0	1	1	0	12.66	1	1.1	0.9;
	23	1	90	50	0	0	1	1	0	12.66	1	1.1	0.9;
	24	1	420	200	0	0	1	1	0	12.66	1	1.1	0.9;
	25	1	420	200	0	0	1	1	0	12.66	1	1.1	0.9;
	26	1	60	25	0	0	1	1	0	12.66	1	1.1	0.9;
	27	1	60	25	0	0	1	1	0	12.66	1	1.1	0.9;
	28	1	60	20	0	0	1	1	0	12.66	1	1.1	0.9;
	29	1	120	70	0	0	1	1	0	12.66	1	1.1	0.9;
	30	1	200	600	0	0	1	1	0	12.66	1	1.1	0.9;
	31	1	150	70	0	0	1	1	0	12.66	1	1.1	0.9;
	32	1	210	100	0	0	1	1	0	12.66	1	1.1	0.9;
	33	1	60	40	0	0	1	1	0	12.66	1	1.1	0.9;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	0	0	10	-10	1	100	1	10	0	0	0	0	0	0	0	0	0	0	0	0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [  %% (r and x specified in ohms here, converted to p.u. below)
	1	2	0.0922	0.0470	0	0	0	0	0	0	1	-360	360;
	2	3	0.4930	0.2511	0	0	0	0	0	0	1	-360	360;
	3	4	0.3660	0.1864	0	0	0	0	0	0	1	-360	360;
	4	5	0.3811	0.1941	0	0	0	0	0	0	1	-360	360;
	5	6	0.8190	0.7070	0	0	0	0	0	0	1	-360	360;
	6	7	0.1872	0.6188	0	0	0	0	0	0	1	-360	360;
	7	8	0.7114	0.2351	0	0	0	0	0	0	1	-360	360;
	8	9	1.0300	0.7400	0	0	0	0	0	0	1	-360	360;
	9	10	1.0440	0.7400	0	0	0	0	0	0	1	-360	360;
	10	11	0.1966	0.0650	0	0	0	0	0	0	1	-360	360;
	11	12	0.3744	0.1238	0	0	0	0	0	0	1	-360	360;
	12	13	1.4680	1.1550	0	0	0	0	0	0	1	-360	360;
	13	14	0.5416	0.7129	0	0	0	0	0	0	1	-360	360;
	14	15	0.5910	0.5260	0	0	0	0	0	0	1	-360	360;
	15	16	0.7463	0.5450	0	0	0	0	0	0	1	-360	360;
	16	17	1.2890	1.7210	0	0	0	0	0	0	1	-360	360;
	17	18	0.7320	0.5740	0	0	0	0	0	0	1	-360	360;
	2	19	0.1640	0.1565	0	0	0	0	0	0	1	-360	360;
	19	20	1.5042	1.3554	0	0	0	0	0	0	1	-360	360;
	20	21	0.4095	0.4784	0	0	0	0	0	0	1	-360	360;
	21	22	0.7089	0.9373	0	0	0	0	0	0	1	-360	360;
	3	23	0.4512	0.3083	0	0	0	0	0	0	1	-360	360;
	23	24	0.8980	0.7091	0	0	0	0	0	0	1	-360	360;
	24	25	0.8960	0.7011	0	0	0	0	0	0	1	-360	360;
	6	26	0.2030	0.1034	0	0	0	0	0	0	1	-360	360;
	26	27	0.2842	0.1447	0	0	0	0	0	0	1	-360	360;
	27	28	1.0590	0.9337	0	0	0	0	0	0	1	-360	360;
	28	29	0.8042	0.7006	0	0	0	0	0	0	1	-360	360;
	29	30	0.5075	0.2585	0	0	0	0	0	0	1	-360	360;
	30	31	0.9744	0.9630	0	0	0	0	0	0	1	-360	360;
	31	32	0.3105	0.3619	0	0	0	0	0	0	1	-360	360;
	32	33	0.3410	0.5302	0	0	0	0	0	0	1	-360	360;
	21	8	2.0000	2.0000	0	0	0	0	0	0	0	-360	360;
	9	15	2.0000	2.0000	0	0	0	0	0	0	0	-360	360;
	12	22	2.0000	2.0000	0	0	0	0	0	0	0	-360	360;
	18	33	0.5000	0.5000	0	0	0	0	0	0	0	-360	360;
	25	29	0.5000	0.5000	0	0	0	0	0	0	0	-360	360;
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	0	20	0;
];


%% convert branch impedances from Ohms to p.u.
[PQ, PV, REF, NONE, BUS_I, BUS_TYPE, PD, QD, GS, BS, BUS_AREA, VM, ...
    VA, BASE_KV, ZONE, VMAX, VMIN, LAM_P, LAM_Q, MU_VMAX, MU_VMIN] = idx_bus;
[F_BUS, T_BUS, BR_R, BR_X, BR_B, RATE_A, RATE_B, RATE_C, ...
    TAP, SHIFT, BR_STATUS, PF, QF, PT, QT, MU_SF, MU_ST, ...
    ANGMIN, ANGMAX, MU_ANGMIN, MU_ANGMAX] = idx_brch;
Vbase = mpc.bus(1, BASE_KV) * 1e3;      %% in Volts
Sbase = mpc.baseMVA * 1e6;              %% in VA
mpc.branch(:, [BR_R BR_X]) = mpc.branch(:, [BR_R BR_X]) / (Vbase^2 / Sbase);

%% convert loads from kW to MW
mpc.bus(:, [PD, QD]) = mpc.bus(:, [PD, QD]) / 1e3;

%%-----  Additional Power Flow  Data  -----%%
%% generator ramp ratio
% bus	ramp_up	ramp_dn
mpc.genramp_ratio = [
    1	0.05	0.05
];

%% load ratio in each period
% bus	t_1	t_2	t_3	t_4	t_5	t_6	t_7	t_8	t_9	t_10	t_11	t_12
mpc.load_ratio = [
    1	0.6253	0.5431	0.439	0.2874	0.5017	0.7615	0.7624	0.5761	0.7477	0.6455	0.1232	0.5044
    2	0.3473	0.0921	0.1478	0.1982	0.6723	0.4315	0.6944	0.2568	0.0098	0.5323	0.2794	0.9462
    3	0.9064	0.3927	0.0249	0.6714	0.8372	0.9715	0.0569	0.4503	0.5825	0.6866	0.7194	0.65
    4	0.7269	0.3738	0.5816	0.1161	0.0577	0.9798	0.2848	0.595	0.9622	0.1858	0.193	0.3416
    5	0.9329	0.3907	0.2732	0.1519	0.3971	0.3747	0.1311	0.435	0.0915	0.6146	0.011	0.5733
    6	0.7897	0.2354	0.448	0.5694	0.0614	0.4963	0.6423	0.2213	0.8371	0.9711	0.8464	0.506
    7	0.2789	0.7466	0.2369	0.9573	0.6203	0.6003	0.1726	0.0903	0.2553	0.8586	0.9111	0.6996
    8	0.7252	0.2299	0.5761	0.8106	0.4038	0.9884	0.09	0.3209	0.5114	0.0606	0.7257	0.5566
    9	0.5294	0.83	0.8588	0.789	0.3178	0.4522	0.7522	0.1099	0.1097	0.2699	0.5246	0.9727
    10	0.7104	0.3119	0.2915	0.8504	0.9116	0.6393	0.2554	0.0887	0.8383	0.5847	0.9481	0.061
    11	0.5846	0.2851	0.8277	0.191	0.4425	0.3934	0.8266	0.6769	0.2076	0.3181	0.1338	0.6715
    12	0.571	0.1698	0.1477	0.4761	0.9081	0.5522	0.0329	0.0539	0.8051	0.4514	0.3826	0.7896
    13	0.3643	0.5323	0.7117	0.8715	0.3287	0.6501	0.9748	0.076	0.587	0.4139	0.3091	0.2638
    14	0.7588	0.9952	0.1866	0.7811	0.1958	0.9924	0.8023	0.4242	0.7289	0.4984	0.809	0.3565
    15	0.0732	0.591	0.9102	0.1938	0.4324	0.7492	0.0392	0.9463	0.7637	0.5588	0.1838	0.4979
    16	0.5178	0.9942	0.8549	0.9624	0.6789	0.4035	0.935	0.4795	0.2318	0.3963	0.7051	0.5586
    17	0.7566	0.9955	0.9624	0.5351	0.9639	0.1156	0.0514	0.3043	0.5802	0.531	0.9012	0.5406
    18	0.432	0.5427	0.7124	0.0167	0.8009	0.1425	0.4785	0.2568	0.3691	0.6618	0.1696	0.2788
    19	0.1982	0.1951	0.3268	0.8803	0.4711	0.404	0.1792	0.9689	0.4075	0.8445	0.6153	0.3766
    20	0.8772	0.7849	0.465	0.814	0.8984	0.4292	0.3343	0.5966	0.902	0.7021	0.3775	0.735
    21	0.9541	0.5428	0.5401	0.3111	0.0712	0.182	0.093	0.4635	0.0093	0.915	0.6427	0.0014
    22	0.0304	0.2085	0.455	0.1273	0.0086	0.7271	0.3541	0.7804	0.4367	0.4366	0.0492	0.0496
    23	0.0911	0.594	0.2411	0.8414	0.8572	0.9636	0.4889	0.2203	0.2262	0.5368	0.7621	0.3476
    24	0.4612	0.6393	0.9173	0.1616	0.7156	0.5777	0.4333	0.8842	0.3931	0.179	0.6333	0.624
    25	0.3279	0.803	0.9995	0.981	0.127	0.2322	0.0236	0.6074	0.1108	0.4075	0.8841	0.5481
    26	0.369	0.2083	0.4409	0.9562	0.124	0.4708	0.8569	0.0434	0.6916	0.979	0.2833	0.1338
    27	0.6853	0.9095	0.6109	0.9	0.1934	0.7544	0.3463	0.4186	0.1557	0.819	0.6249	0.7386
    28	0.8051	0.0672	0.9508	0.4976	0.7551	0.7424	0.8311	0.1565	0.4573	0.6181	0.9322	0.8351
    29	0.8954	0.5825	0.5827	0.8549	0.0349	0.8854	0.4077	0.0364	0.7461	0.1548	0.1439	0.606
    30	0.2545	0.3242	0.4018	0.4064	0.3862	0.6098	0.1669	0.1881	0.0946	0.3232	0.7696	0.2341
    31	0.7404	0.6928	0.8241	0.828	0.2934	0.3094	0.523	0.3253	0.8318	0.8103	0.557	0.263
    32	0.6806	0.2337	0.4564	0.3846	0.5386	0.9917	0.7552	0.9805	0.2348	0.5286	0.0514	0.7569
    33	0.602	0.8572	0.9883	0.9295	0.4095	0.0003	0.5409	0.2077	0.2193	0.3258	0.0959	0.7475
];

%% wind power output ratio to Pd
% bus	t_1	t_2	t_3	t_4	t_5	t_6	t_7	t_8	t_9	t_10	t_11	t_12
mpc.Pw_ratio = [
    1	0.7485	0.5433	0.3381	0.8323	0.5526	0.9575	0.8928	0.3565	0.5464	0.3467	0.6228	0.7966
    2	0.7459	0.1255	0.8224	0.0252	0.4144	0.7314	0.7814	0.3673	0.7449	0.8923	0.2426	0.1296
    3	0.2251	0.35	0.2871	0.9275	0.0513	0.5927	0.1629	0.8384	0.1676	0.5022	0.9993	0.3554
    4	0.0471	0.2137	0.3978	0.3337	0.2296	0.9361	0.6832	0.9621	0.438	0.9403	0.0058	0.6103
    5	0.8011	0.233	0.9325	0.7633	0.8264	0.5735	0.7926	0.329	0.2235	0.3124	0.5845	0.8299
    6	0.2905	0.4026	0.8621	0.6147	0.9912	0.2037	0.8272	0.6759	0.2489	0.4758	0.3991	0.5994
    7	0.8005	0.1051	0.8214	0.8411	0.3545	0.4301	0.5722	0.7008	0.7425	0.7579	0.3891	0.4293
    8	0.9563	0.573	0.8497	0.2763	0.6223	0.5884	0.9635	0.0859	0.5005	0.5216	0.0902	0.9047
    9	0.8844	0.439	0.7817	0.1485	0.6198	0.2606	0.4457	0.844	0.1962	0.3039	0.4833	0.3378
    10	0.7985	0.9875	0.159	0.2369	0.7022	0.3755	0.9737	0.9723	0.6437	0.8601	0.4019	0.6319
    11	0.9852	0.5595	0.9336	0.7203	0.484	0.639	0.8876	0.1987	0.3954	0.9922	0.4024	0.6589
    12	0.9013	0.9954	0.6532	0.1084	0.0361	0.6181	0.5671	0.962	0.7461	0.6625	0.5233	0.2599
    13	0.962	0.5402	0.0303	0.6963	0.5197	0.059	0.89	0.3302	0.2297	0.1139	0.3109	0.2284
    14	0.652	0.0662	0.2754	0.2818	0.8801	0.4443	0.7559	0.6033	0.7833	0.1139	0.9786	0.8486
    15	0.0506	0.4662	0.3257	0.6302	0.2303	0.5799	0.6032	0.5999	0.4484	0.0354	0.5138	0.4077
    16	0.108	0.4599	0.4509	0.5511	0.8054	0.7009	0.8722	0.0522	0.2197	0.4596	0.9585	0.79
    17	0.4519	0.3334	0.0591	0.7409	0.5068	0.1999	0.4272	0.1687	0.7517	0.3684	0.9418	0.0172
    18	0.8291	0.6266	0.5387	0.6505	0.7266	0.0945	0.8776	0.0144	0.2943	0.1799	0.9263	0.0682
    19	0.5811	0.6372	0.6513	0.8646	0.056	0.8169	0.5289	0.6944	0.2124	0.5433	0.7025	0.9564
    20	0.4445	0.0854	0.0573	0.6295	0.7962	0.6912	0.3453	0.9468	0.5202	0.9538	0.0736	0.207
    21	0.775	0.9142	0.7826	0.2955	0.1518	0.8479	0.7849	0.2708	0.2278	0.321	0.8296	0.8222
    22	0.5707	0.5718	0.286	0.6991	0.7963	0.4416	0.4462	0.4657	0.279	0.6754	0.9037	0.9085
    23	0.7472	0.2605	0.6896	0.1318	0.1235	0.1909	0.1457	0.585	0.0734	0.8223	0.7229	0.9259
    24	0.4926	0.6549	0.8901	0.5385	0.2822	0.976	0.0364	0.3262	0.973	0.365	0.3091	0.1209
    25	0.9158	0.1355	0.3321	0.8975	0.4996	0.6153	0.5831	0.6983	0.0293	0.5279	0.0321	0.8271
    26	0.34	0.8467	0.2461	0.5815	0.9377	0.0478	0.054	0.0206	0.6815	0.5986	0.114	0.7962
    27	0.6179	0.0702	0.0693	0.136	0.7889	0.0924	0.2379	0.2436	0.1048	0.8584	0.6982	0.7337
    28	0.6505	0.5163	0.3264	0.6618	0.1176	0.1478	0.0198	0.9643	0.9704	0.1239	0.4674	0.6567
    29	0.2902	0.7545	0.5581	0.4278	0.2672	0.7537	0.8984	0.7284	0.4068	0.9383	0.2554	0.5332
    30	0.9548	0.2677	0.2501	0.9277	0.0686	0.2994	0.5916	0.2033	0.6359	0.7984	0.5017	0.6508
    31	0.796	0.2334	0.6008	0.1125	0.5158	0.8378	0.9208	0.4982	0.2776	0.6525	0.9173	0.5098
    32	0.9742	0.1973	0.1112	0.2974	0.3964	0.4208	0.3115	0.6938	0.0919	0.4021	0.2952	0.3065
    33	0.1056	0.5938	0.2827	0.1552	0.0007	0.2836	0.5508	0.8709	0.0423	0.9047	0.131	0.8337
];

%%-----  Energy Storage Data  -----%%
%% storage location
% bus	Emax	Emin	E0	Ed	Pchmax	Pdcmax	effciency	Pchcost	Pdccost
mpc.storage = [
    2	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    3	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    4	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    7	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    8	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    10	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    12	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    14	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    15	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    16	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    17	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    18	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    19	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    20	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    21	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    23	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    24	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    26	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    29	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
    30	1	0	0.4	0.5	0.2	0.2	0.8	-19.9	20.8
];
 