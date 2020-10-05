package com.Escola.SistemaAlunos.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Escola.SistemaAlunos.model.Aluno;

public interface AlunosRepository extends JpaRepository<Aluno, Long> {
	
	public List<Aluno> findAllByNomeContainingIgnoreCase ( String t);
	
}
