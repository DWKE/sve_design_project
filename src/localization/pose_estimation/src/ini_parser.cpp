#include "ini_parser.h"

#define SI_SUPPORT_IOSTREAMS
#include "simpleini/SimpleIni.h"

#include <sstream>              // std::stringstream
#include <iomanip>              // std::setprecision

#include <iostream>
#include <time.h>
#include <sys/stat.h>
#include <sys/types.h>


CINI_Parser::CINI_Parser()
{

}

CINI_Parser::~CINI_Parser()
{

}

bool CINI_Parser::Init(std::string strFile)
{
	m_strCfgFile = strFile;

	return true;
}

bool CINI_Parser::IsFileUpdated(){
    struct stat attr;
    if( stat( m_strCfgFile.c_str(), &attr) == -1 ) return false;
    if( (attr.st_mtime == m_fileUpdateTime) && (m_fileUpdateTime != -1) ) return false;
    m_fileUpdateTime = attr.st_mtime;
    return true;
}


bool CINI_Parser::ParseConfig(std::string strAppName, std::string strKeyName, std::string& Output)
{
	// ini file load
	CSimpleIniA ini;
	ini.SetUnicode();
	SI_Error rc = ini.LoadFile(m_strCfgFile.c_str());
	if (rc < 0) return false;

	// Get value
	const char * cBuffer = ini.GetValue(strAppName.c_str(), strKeyName.c_str(), "");
	if(cBuffer == "")
		return false;

	Output = std::string(cBuffer);

	return true;
}

bool CINI_Parser::ParseConfig(std::string strAppName, std::string strKeyName, bool& Output)
{
	// ini file load
	CSimpleIniA ini;
	ini.SetUnicode();
	SI_Error rc = ini.LoadFile(m_strCfgFile.c_str());
	if (rc < 0) return false;

	// Get value
	const char * cBuffer = ini.GetValue(strAppName.c_str(), strKeyName.c_str(), "");
	if(cBuffer == "")
		return false;

	try{
		if (std::stoi(cBuffer) == 1) {
			Output = true;
		}
		else {
			Output = false;
		}
	}
	catch(std::invalid_argument&){
		if(std::string(cBuffer) == "true" || std::string(cBuffer) == "True"){
			Output = true;
		}
		else{
			Output = false;
		}		
	}
	return true;
}

bool CINI_Parser::ParseConfig(std::string strAppName, std::string strKeyName, int& Output)
{
	// ini file load
	CSimpleIniA ini;
	ini.SetUnicode();
	SI_Error rc = ini.LoadFile(m_strCfgFile.c_str());
	if (rc < 0) return false;

	// Get value
	const char * cBuffer = ini.GetValue(strAppName.c_str(), strKeyName.c_str(), "");
	if(cBuffer == "")
		return false;

	try{
		Output = std::stoi(cBuffer);
		return true;
	}
	catch(std::invalid_argument&){
		return false;
	}
}

bool CINI_Parser::ParseConfig(std::string strAppName, std::string strKeyName, unsigned int & Output)
{
	// ini file load
	CSimpleIniA ini;
	ini.SetUnicode();
	SI_Error rc = ini.LoadFile(m_strCfgFile.c_str());
	if (rc < 0) return false;

	// Get value
	const char * cBuffer = ini.GetValue(strAppName.c_str(), strKeyName.c_str(), "");
	if(cBuffer == "")
		return false;

	try{
		Output = (unsigned int)std::stoi(cBuffer);
		return true;
	}
	catch(std::invalid_argument&){
		return false;
	}
}

bool CINI_Parser::ParseConfig(std::string strAppName, std::string strKeyName, float& Output)
{
	// ini file load
	CSimpleIniA ini;
	ini.SetUnicode();
	SI_Error rc = ini.LoadFile(m_strCfgFile.c_str());
	if (rc < 0) return false;

	// Get value
	const char * cBuffer = ini.GetValue(strAppName.c_str(), strKeyName.c_str(), "");
	if(cBuffer == "")
		return false;

	Output = (float)atof(cBuffer);
	try{
		Output = (float)std::stof(cBuffer);
		return true;
	}
	catch(std::invalid_argument&){
		return false;
	}
}
bool CINI_Parser::ParseConfig(std::string strAppName, std::string strKeyName, double& Output)
{
	// ini file load
	CSimpleIniA ini;
	ini.SetUnicode();
	SI_Error rc = ini.LoadFile(m_strCfgFile.c_str());
	if (rc < 0) return false;

	// Get value
	const char * cBuffer = ini.GetValue(strAppName.c_str(), strKeyName.c_str(), "");
	if(cBuffer == "")
		return false;

	try{
		Output = std::stof(cBuffer);
		return true;
	}
	catch(std::invalid_argument&){
		return false;
	}
}

bool CINI_Parser::ParseConfig(std::string strAppName, std::string strKeyName, std::vector<double>& Output)
{
	// ini file load
	CSimpleIniA ini;
	ini.SetUnicode();
	SI_Error rc = ini.LoadFile(m_strCfgFile.c_str());
	if (rc < 0) return false;

	// Get value
	const char * cBuffer = ini.GetValue(strAppName.c_str(), strKeyName.c_str(), "");
	if(cBuffer == "")
		return false;

	if (ExtractArrayValueFromString(cBuffer, Output)==false) 
		return false;

	return true;
}

bool CINI_Parser::ParseConfig(std::string strAppName, std::string strKeyName, std::vector<std::vector<double>>& Output)
{
	// ini file load
	CSimpleIniA ini;
	ini.SetUnicode();
	SI_Error rc = ini.LoadFile(m_strCfgFile.c_str());
	if (rc < 0) return false;

	Output.clear();

	int nID = 0;
	for (;;)
	{
		// Get value string
		const char * cBuffer = ini.GetValue(strAppName.c_str(), (strKeyName + "_" + std::to_string(nID)).c_str(), "");
		if(cBuffer == "")
			break;

		// Converting
		std::vector<double> vecArray;
		if (!ExtractArrayValueFromString(cBuffer, vecArray)) {
			break;
		}

		// Push to calibration vector
		Output.push_back(vecArray);

		// ID increasing
		nID++;
	}

	if (nID > 0) {
		return true;
	}
	else {
		return false;
	}
}

bool CINI_Parser::ExtractArrayValueFromString(std::string strArray, std::vector<double>& vecValues)
{
	vecValues.clear();
	std::stringstream ssArray(strArray);

	std::string strTmpElement;
	while (ssArray >> strTmpElement)
	{

		if (ssArray.peek() == ',') {
			ssArray.ignore();
		}

		double dTmpElement = 0.0;

		if (strTmpElement == "inf")       //you could also add it with negative infinity
		{
			dTmpElement = std::numeric_limits<double>::infinity();
		}
		else if (strTmpElement == "-inf")       //you could also add it with negative infinity
		{
			dTmpElement = -std::numeric_limits<double>::infinity();
		}
		else
		{
			dTmpElement = std::stod(strTmpElement);
		}

		vecValues.push_back(dTmpElement);	
	}
	return true;
}



CINI_Exporter::CINI_Exporter()
{
}

CINI_Exporter::~CINI_Exporter()
{
}

bool CINI_Exporter::Init(std::string strFile)
{
	m_strCfgFile = strFile;

	return true;
}

bool CINI_Exporter::ExportConfig(std::string strAppName, std::string strKeyName, std::string Val)
{
	// ini file load
	CSimpleIniA ini;
	ini.SetUnicode();
	ini.LoadFile(m_strCfgFile.c_str());

	// Set value
	ini.SetValue(strAppName.c_str(), strKeyName.c_str(), Val.c_str());

	// Save file
	SI_Error rc = ini.SaveFile(m_strCfgFile.c_str());
	if (rc < 0) return false;
	
	return true;
}

bool CINI_Exporter::ExportConfig(std::string strAppName, std::string strKeyName, bool Val)
{
	// ini file load
	CSimpleIniA ini;
	ini.SetUnicode();
	ini.LoadFile(m_strCfgFile.c_str());

	// Set value
	std::string strTmp = std::to_string(Val).c_str();
	ini.SetValue(strAppName.c_str(), strKeyName.c_str(), strTmp.c_str());

	// Save file
	SI_Error rc = ini.SaveFile(m_strCfgFile.c_str());
	if (rc < 0) return false;
	return true; 
}

bool CINI_Exporter::ExportConfig(std::string strAppName, std::string strKeyName, int Val)
{
	// ini file load
	CSimpleIniA ini;
	ini.SetUnicode();
	ini.LoadFile(m_strCfgFile.c_str());

	// Set value
	ini.SetValue(strAppName.c_str(), strKeyName.c_str(), std::to_string(Val).c_str());

	// Save file
	SI_Error rc = ini.SaveFile(m_strCfgFile.c_str());
	if (rc < 0) return false;
	return true;
}

bool CINI_Exporter::ExportConfig(std::string strAppName, std::string strKeyName, unsigned int Val)
{
	// ini file load
	CSimpleIniA ini;
	ini.SetUnicode();
	ini.LoadFile(m_strCfgFile.c_str());

	// Set value
	ini.SetValue(strAppName.c_str(), strKeyName.c_str(), std::to_string(Val).c_str());

	// Save file
	SI_Error rc = ini.SaveFile(m_strCfgFile.c_str());
	if (rc < 0) return false;

	return true;
}

bool CINI_Exporter::ExportConfig(std::string strAppName, std::string strKeyName, float Val)
{
	// ini file load
	CSimpleIniA ini;
	ini.SetUnicode();
	ini.LoadFile(m_strCfgFile.c_str());

	// Set value
	ini.SetValue(strAppName.c_str(), strKeyName.c_str(), std::to_string(Val).c_str());

	// Save file
	SI_Error rc = ini.SaveFile(m_strCfgFile.c_str());
	if (rc < 0) return false;
	
	return true;
}

bool CINI_Exporter::ExportConfig(std::string strAppName, std::string strKeyName, double Val, unsigned int nPrecision)
{
	// ini file load
	CSimpleIniA ini;
	ini.SetUnicode();
	ini.LoadFile(m_strCfgFile.c_str());

	// Set value
	ini.SetValue(strAppName.c_str(), strKeyName.c_str(), getDoubleToString(Val, nPrecision).c_str());

	// Save file
	SI_Error rc = ini.SaveFile(m_strCfgFile.c_str());
	if (rc < 0) return false;
	
	return true;
}

bool CINI_Exporter::ExportConfig(std::string strAppName, std::string strKeyName, std::vector<double> Val)
{
	std::string strKeyValue = "";
	for (auto itVal = Val.begin(); itVal != Val.end(); itVal++)
	{
		strKeyValue = strKeyValue + std::to_string(*itVal) + " ";
	}

	
	// ini file load
	CSimpleIniA ini;
	ini.SetUnicode();
	ini.LoadFile(m_strCfgFile.c_str());

	// Set value
	ini.SetValue(strAppName.c_str(), strKeyName.c_str(), strKeyValue.c_str());

	// Save file
	SI_Error rc = ini.SaveFile(m_strCfgFile.c_str());
	if (rc < 0) return false;
	
	return true;
}

bool CINI_Exporter::ExportConfig(std::string strAppName, std::string strKeyName, std::vector<std::vector<double>> Val)
{
	bool bIsCfgComplete = true;

	int nID = 0;
	for (auto itVal = Val.begin(); itVal != Val.end(); itVal++)
	{
		std::string strKeyNameID = strKeyName + "_" + std::to_string(nID);
		std::string strKeyValueID = "";
		for (auto itVVal = itVal->begin(); itVVal != itVal->end(); itVVal++)
		{
			strKeyValueID = strKeyValueID + std::to_string(*itVVal) + " ";
		}

		// ini file load
		CSimpleIniA ini;
		ini.SetUnicode();
		ini.LoadFile(m_strCfgFile.c_str());

		// Set value
		ini.SetValue(strAppName.c_str(), strKeyNameID.c_str(), strKeyValueID.c_str());

		// Save file
		SI_Error rc = ini.SaveFile(m_strCfgFile.c_str());
		if (rc < 0) bIsCfgComplete = false;
	
	
		nID++;		// ID increase
	}

	return bIsCfgComplete;
	
}

std::string CINI_Exporter::getDoubleToString(double value, unsigned int nPrecision)
{
	std::stringstream out;
	out << std::setprecision(nPrecision) << value;
	return out.str();
}