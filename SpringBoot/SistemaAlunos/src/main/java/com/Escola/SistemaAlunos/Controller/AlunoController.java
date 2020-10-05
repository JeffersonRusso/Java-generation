package com.Escola.SistemaAlunos.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.Escola.SistemaAlunos.repository.AlunosRepository;
import com.Escola.SistemaAlunos.model.Aluno;

@RestController
@RequestMapping ("/aluno")
@CrossOrigin("*")	
public class AlunoController {
	
	@Autowired
	private AlunosRepository repository;
	
	@GetMapping
	public ResponseEntity<List<Aluno>> GetAll ()
	{
		return ResponseEntity.ok(repository.findAll());	
	}
	
	@GetMapping ("/{id}")
	public ResponseEntity<Aluno> GetById (@PathVariable long id)
	{
		return repository.findById(id)
				.map(resp -> ResponseEntity.ok(resp))
						.orElse(ResponseEntity.notFound().build());
	}
	
	@GetMapping("/aluno/{aluno}")
	public ResponseEntity<List<Aluno>> GetByTitulo(@PathVariable String aluno)
	{
		return ResponseEntity.ok(repository.findAllByNomeContainingIgnoreCase(aluno));
	}
	
	@PostMapping
	public ResponseEntity<Aluno> post (@RequestBody Aluno Aluno)
	{
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(Aluno));
	}
	
	@PutMapping
	public ResponseEntity<Aluno> put (@RequestBody Aluno Aluno)
	{
		return ResponseEntity.status(HttpStatus.OK).body(repository.save(Aluno));
	}
	
	@DeleteMapping ("/{id}")
	public void delete(@PathVariable Long id) 
	{
		repository.deleteById(id);
	}
	
}
