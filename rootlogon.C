{
TString cmsswbase = getenv("CMSSW_BASE");
    if(cmsswbase.Length() > 0){
        cout << "Loading FW Lite Setup" << endl;
        gSystem->Load("libFWCoreFWLite.so");
        AutoLibraryLoader::enable();
        gSystem->Load("libDataFormatsFWLite.so");
        gSystem->Load("libDataFormatsPatCandidates.so");
    }

cout<<"HI Raghav, Try not to get frustrated with me"<<endl;
 cout<<"afterall you are only human"<<endl;
 cout<<"have a nice day!! :)"<<endl;
}
