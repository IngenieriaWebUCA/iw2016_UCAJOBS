package es.iw.ucajobs.domain;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.JUnit4;
import org.springframework.mock.staticmock.MockStaticEntityMethods;

@RunWith(JUnit4.class)
@MockStaticEntityMethods
public class OfertaTrabajoTest {

    @Test
    public void testMethod() {
        int expectedCount = 13;
        OfertaTrabajo.countOfertaTrabajoes();
        org.springframework.mock.staticmock.AnnotationDrivenStaticEntityMockingControl.expectReturn(expectedCount);
        org.springframework.mock.staticmock.AnnotationDrivenStaticEntityMockingControl.playback();
        org.junit.Assert.assertEquals(expectedCount, OfertaTrabajo.countOfertaTrabajoes());
    }
}
