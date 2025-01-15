package in.tech_camp.firstapp.entity;

import lombok.Data;
import java.sql.Timestamp;

@Data
public class PostEntity {
  private Integer id;
  private String content;
  private Timestamp createdAt;

  public PostEntity(Integer id, String content, Timestamp createdAt) {
    this.id = id;
    this.content = content;
    this.createdAt = createdAt;
  }

  public PostEntity() {
  }
  /*
  public long getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public Timestamp getCreatedAt() {
    return createdAt;
  }

  public void setCreatedAt(Timestamp createdAt) {
    this.createdAt = createdAt;
  }
*/

}
