using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ColourGrade : MonoBehaviour
{
    public Shader Shader;
    public Material m_renderMaterial;
    public Material ColourGradeClean;
    public Material ColourGrading;
    void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        Graphics.Blit(source, destination, m_renderMaterial);
    }

    private void Update()
    {
        if (Input.GetKey(KeyCode.Alpha1))
        {

            m_renderMaterial = ColourGradeClean;
        }
        if (Input.GetKey(KeyCode.Alpha2))
        {

            m_renderMaterial = ColourGrading;
        }
    }

}