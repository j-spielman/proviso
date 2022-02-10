package dbBeans;
import java.util.List;

public interface GenericDao<E,K> {
	
	void add(E entity);
	
	void update(E entity);
	
	void remove(K key);
	
	List<E> list();
	
	E find(K key);

}
