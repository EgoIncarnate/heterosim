void data_to( int* x, int m, int comp_no,
		char p_jinfo_comps_info_quant_tbl_no_[NUM_COMPONENT],
		char p_jinfo_comps_info_dc_tbl_no_[NUM_COMPONENT],
		unsigned int p_jinfo_quant_tbl_quantval_[NUM_QUANT_TBLS][DCTSIZE2],
		int p_jinfo_dc_xhuff_tbl_huffval_[NUM_HUFF_TBLS][257],
		int p_jinfo_ac_xhuff_tbl_huffval_[NUM_HUFF_TBLS][257],
		int p_jinfo_dc_dhuff_tbl_ml_[NUM_HUFF_TBLS],
		int p_jinfo_dc_dhuff_tbl_maxcode_[NUM_HUFF_TBLS][36],
		int p_jinfo_dc_dhuff_tbl_mincode_[NUM_HUFF_TBLS][36],
		int p_jinfo_dc_dhuff_tbl_valptr_[NUM_HUFF_TBLS][36],
		int p_jinfo_ac_dhuff_tbl_ml_[NUM_HUFF_TBLS],
		int p_jinfo_ac_dhuff_tbl_maxcode_[NUM_HUFF_TBLS][36],
		int p_jinfo_ac_dhuff_tbl_mincode_[NUM_HUFF_TBLS][36],
		int p_jinfo_ac_dhuff_tbl_valptr_[NUM_HUFF_TBLS][36],
		unsigned char CurHuffReadBuf[57]);
void data_from(int *y, int n,int out_buf[DCTSIZE2],
 int HuffBuff[DCTSIZE2],
 int *offset);


void data_to1( int* x, int m, /*int comp_no,*/
		char p_jinfo_comps_info_quant_tbl_no_[NUM_COMPONENT],
		char p_jinfo_comps_info_dc_tbl_no_[NUM_COMPONENT],
		unsigned int p_jinfo_quant_tbl_quantval_[NUM_QUANT_TBLS][DCTSIZE2],
		int p_jinfo_dc_xhuff_tbl_huffval_[NUM_HUFF_TBLS][257],
		int p_jinfo_ac_xhuff_tbl_huffval_[NUM_HUFF_TBLS][257],
		int p_jinfo_dc_dhuff_tbl_ml_[NUM_HUFF_TBLS],
		int p_jinfo_dc_dhuff_tbl_maxcode_[NUM_HUFF_TBLS][36],
		int p_jinfo_dc_dhuff_tbl_mincode_[NUM_HUFF_TBLS][36],
		int p_jinfo_dc_dhuff_tbl_valptr_[NUM_HUFF_TBLS][36],
		int p_jinfo_ac_dhuff_tbl_ml_[NUM_HUFF_TBLS],
		int p_jinfo_ac_dhuff_tbl_maxcode_[NUM_HUFF_TBLS][36],
		int p_jinfo_ac_dhuff_tbl_mincode_[NUM_HUFF_TBLS][36],
		int p_jinfo_ac_dhuff_tbl_valptr_[NUM_HUFF_TBLS][36]//,
		//unsigned char CurHuffReadBuf[57]
                 );


void data_to2( int* x, int m, int comp_no,
		unsigned char CurHuffReadBuf[57]);
