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
		Trainer trainer1 = new Trainer("T123", "�ȼ���");
		trainer1.setcategory("FITNESS");
		trainer1.setFilename("trainerA.png");
		trainer1.setDescription("'MANAGER/PERSONAL TRAINER'");
		trainer1.setLesson("1:1 PT LESSON  / �׷� PT LESSON");
		trainer1.setAbility("��Ȱü�� ������ 2��(�������)" );
		trainer1.setAbility1("���Ѻ��������ȸ Ŭ���� ������� -175cm 3��" );
		trainer1.setAbility2("������ǥ ������ ���� �� �Ի� (6��)" );
		trainer1.setAbility3("������������ �ڰ� 1��");

		
		
		Trainer trainer2 = new Trainer("T124", "���ϱ�" );
		trainer2.setcategory("FITNESS");
		trainer2.setFilename("trainerB.png");
		trainer2.setDescription("PERSONAL TRAINER");
		trainer2.setLesson("1:1 PT Lesson / �׷� PT LESSON");
		trainer2.setAbility("��Ȱü�� ������ 1�� (�������)");
		trainer2.setAbility1("��Ȱü�� ������ 2�� (�������)");
		trainer2.setAbility2("��Ȱü�� ������ 2�� (�౸) ");
		trainer2.setAbility3("������������ �ڰ� ��� ");

		
		Trainer trainer3 = new Trainer("T125", "��â��");
		trainer3.setcategory("FITNESS");
		trainer3.setFilename("trainerC.png");
		trainer3.setDescription("PERSONAL TRAINER");
		trainer3.setLesson("1:1 PT LESSON");
		trainer3.setAbility("��Ȱü�� ������ 2��(�������)");
		trainer3.setAbility1("���� ������ ������ ");
		trainer3.setAbility2("������������ �ڰ� 1��");
		trainer3.setAbility3("FISAF �۽��� Ʈ���̳� (����/����)�ڰ�");

		
		Trainer trainer5 = new Trainer("T127", "������");
		trainer5.setcategory("FITNESS");
		trainer5.setFilename("trainerE.png");
		trainer5.setDescription("PERSONAL TRAINER");
		trainer5.setLesson("1:1 PT Lesson / �׷� PT Lesson");
		trainer5.setAbility("��Ȱü�� ������ 2��(�������)");
		trainer5.setAbility1("FST STRECH THERAPY ���� ");
		trainer5.setAbility2("������������ �ڰ� 1��");
		trainer5.setAbility3("CES KOREA ����� ����");
	
		
		Trainer trainer6 = new Trainer("T128", "��ȿ��");
		trainer6.setcategory("FITNESS");
		trainer6.setFilename("trainerF.png");
		trainer6.setDescription("PERSONAL TRAINER");
		trainer6.setLesson("1:1 PT Lesson / �׷� PT Lesson");
		trainer6.setAbility("��Ȱü�� ������ 2��(�������)");
		trainer6.setAbility1("TRIGER POINT(�ٸ��̿�) ���� ");
		trainer6.setAbility2("�� ��Ʈ�Ͻ� 9 �ôϾ� Ʈ���̳�");
		trainer6.setAbility3("������ ������ ����");
	

		Trainer trainer7 = new Trainer("T130", "������" );
		trainer7.setcategory("PILATES");
		trainer7.setFilename("trainerFF.png");
		trainer7.setDescription("MANAGER/INSTRUCTOR");
		trainer7.setLesson("1:1 PT Lesson");
		trainer7.setAbility("��� �ʶ��׽� �����ڰ��� ");
		trainer7.setAbility1("�������� �ʶ��׽� , �ٵ��ī�� �ٸ��̿� ���� �̼� ");
		trainer7.setAbility2("�ҵ����޵��� �ڸ��� ������ ����");
		trainer7.setAbility3("���� ������ȸ PRESTM Technique Course");
		
		
		
		Trainer trainer8 = new Trainer("T131", "��μ�" );
		trainer8.setcategory("PILATES");
		trainer8.setFilename("trainerG.png");
		trainer8.setDescription("INSTRUCTOR");
		trainer8.setLesson("1:1 PT Lesson / �׷� PT Lesson");
		trainer8.setAbility("KEPA �ʶ��׽� �����ڰ���");
		trainer8.setAbility1("��Ʈ�Ͻ� �䰡 ��߻� �ڰ���");
		trainer8.setAbility2(" Performance ���� Ʈ������ ���� ��ũ�� �ڽ� ���� ");
		trainer8.setAbility3("�ѱ����簳�߿� ��ȰƮ���̴� ������LV1,2,3");
		
		
		Trainer trainer9 = new Trainer("T132", "�����" );
		trainer9.setcategory("PILATES");
		trainer9.setFilename("trainerH.png");
		trainer9.setDescription("INSTRUCTOR");
		trainer9.setLesson("1:1 PT Lesson / �׷� PT Lesson");
		trainer9.setAbility("���� ������ �ڰ��� ");
		trainer9.setAbility1("The Pilates Moon �ʶ��׽� �ڰ���");
		trainer9.setAbility2("First aid & CPR Certification ");
		trainer9.setAbility3("�ٸ��̿� ��ũ��, �غ����� � ��ũ��");
		
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
