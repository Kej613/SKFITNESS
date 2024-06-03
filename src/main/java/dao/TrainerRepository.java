package dao;

import java.util.ArrayList;
import dto.Trainer; 

public class TrainerRepository {

	private ArrayList<Trainer> listOfTrainers = new ArrayList<Trainer>();
	private static TrainerRepository instance = new TrainerRepository();
	
	public static TrainerRepository getInstance() {
		return instance;
	}
	public ArrayList<Trainer> getAllTrainers() {
		return listOfTrainers;
	}

	public TrainerRepository() {
		Trainer trainer1 = new Trainer("T123", "안성진");
		trainer1.setcategory("FITNESS");
		trainer1.setFilename("trainerA.png");
		trainer1.setDescription("'MANAGER/PERSONAL TRAINER'");
		trainer1.setLesson("1:1 PT LESSON  / 그룹 PT LESSON");
		trainer1.setAbility("생활체육 지도사 2급(보디빌딩)" );
		trainer1.setAbility1("대한보디빌딩협회 클래식 보디빌딩 -175cm 3위" );
		trainer1.setAbility2("국가대표 선발전 출전 및 입상 (6위)" );
		trainer1.setAbility3("스포츠마사지 자격 1급");

		
		
		Trainer trainer2 = new Trainer("T124", "정일권" );
		trainer2.setcategory("FITNESS");
		trainer2.setFilename("trainerB.png");
		trainer2.setDescription("PERSONAL TRAINER");
		trainer2.setLesson("1:1 PT Lesson / 그룹 PT LESSON");
		trainer2.setAbility("생활체육 지도사 1급 (보디빌딩)");
		trainer2.setAbility1("생활체육 지도사 2급 (보디빌딩)");
		trainer2.setAbility2("생활체육 지도사 2급 (축구) ");
		trainer2.setAbility3("스포츠마사지 자격 취득 ");

		
		Trainer trainer3 = new Trainer("T125", "류창현");
		trainer3.setcategory("FITNESS");
		trainer3.setFilename("trainerC.png");
		trainer3.setDescription("PERSONAL TRAINER");
		trainer3.setLesson("1:1 PT LESSON");
		trainer3.setAbility("생활체육 지도사 2급(보디빌딩)");
		trainer3.setAbility1("노인 스포츠 지도사 ");
		trainer3.setAbility2("스포츠마사지 자격 1급");
		trainer3.setAbility3("FISAF 퍼스널 트레이너 (국내/국제)자격");

		
		Trainer trainer5 = new Trainer("T127", "여지영");
		trainer5.setcategory("FITNESS");
		trainer5.setFilename("trainerE.png");
		trainer5.setDescription("PERSONAL TRAINER");
		trainer5.setLesson("1:1 PT Lesson / 그룹 PT Lesson");
		trainer5.setAbility("생활체육 지도사 2급(보디빌딩)");
		trainer5.setAbility1("FST STRECH THERAPY 수료 ");
		trainer5.setAbility2("스포츠마사지 자격 1급");
		trainer5.setAbility3("CES KOREA 교정운동 수료");
	
		
		Trainer trainer6 = new Trainer("T128", "김효진");
		trainer6.setcategory("FITNESS");
		trainer6.setFilename("trainerF.png");
		trainer6.setDescription("PERSONAL TRAINER");
		trainer6.setLesson("1:1 PT Lesson / 그룹 PT Lesson");
		trainer6.setAbility("생활체육 지도사 2급(보디빌딩)");
		trainer6.setAbility1("TRIGER POINT(근막이완) 수료 ");
		trainer6.setAbility2("전 피트니스 9 시니어 트레이너");
		trainer6.setAbility3("스포츠 마사지 수료");
	

		Trainer trainer7 = new Trainer("T130", "조보람" );
		trainer7.setcategory("PILATES");
		trainer7.setFilename("trainerFF.png");
		trainer7.setDescription("MANAGER/INSTRUCTOR");
		trainer7.setLesson("1:1 PT Lesson");
		trainer7.setAbility("모던 필라테스 국제자격증 ");
		trainer7.setAbility1("산전산후 필라테스 , 바디메카닉 근막이완 교육 이수 ");
		trainer7.setAbility2("소도구메디컬 코리아 전문가 과정");
		trainer7.setAbility3("대한 예방운동협회 PRESTM Technique Course");
		
		
		
		Trainer trainer8 = new Trainer("T131", "김민서" );
		trainer8.setcategory("PILATES");
		trainer8.setFilename("trainerG.png");
		trainer8.setDescription("INSTRUCTOR");
		trainer8.setLesson("1:1 PT Lesson / 그룹 PT Lesson");
		trainer8.setAbility("KEPA 필라테스 국제자격증");
		trainer8.setAbility1("피트니스 요가 빈야사 자격증");
		trainer8.setAbility2(" Performance 선수 트레인이 현장 테크닉 코스 수료 ");
		trainer8.setAbility3("한국인재개발원 재활트레이닝 전문가LV1,2,3");
		
		
		Trainer trainer9 = new Trainer("T132", "김령하" );
		trainer9.setcategory("PILATES");
		trainer9.setFilename("trainerH.png");
		trainer9.setDescription("INSTRUCTOR");
		trainer9.setLesson("1:1 PT Lesson / 그룹 PT Lesson");
		trainer9.setAbility("젠링 지도자 자격증 ");
		trainer9.setAbility1("The Pilates Moon 필라테스 자격증");
		trainer9.setAbility2("First aid & CPR Certification ");
		trainer9.setAbility3("근막이완 워크샵, 해부학적 운동 워크샵");
		
		listOfTrainers.add(trainer1);
		listOfTrainers.add(trainer2);
		listOfTrainers.add(trainer3);
		listOfTrainers.add(trainer5);
		listOfTrainers.add(trainer6);
		listOfTrainers.add(trainer7);
		listOfTrainers.add(trainer8);
		listOfTrainers.add(trainer9);
	}
	

		public Trainer getTrainerById(String trainerId) {
			Trainer trainerById = null;
			
			for (int i =0; i<listOfTrainers.size(); i++) {
				Trainer trainer = listOfTrainers.get(i);
				if( trainer != null && trainer.getTrainerId() != null && trainer.getTrainerId().equals(trainerId)) {
					trainerById = trainer;
					break;
				}
			}
			return trainerById;
			
		}
		
		// TODO Auto-generated constructor stub



}
