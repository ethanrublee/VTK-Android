set(android_defs "-DANDROID_AWESOMENESS -Wno-deprecated")

SET( Kit_SRCS
vtkAbstractCellLocator.cxx
vtkAbstractInterpolatedVelocityField.cxx
vtkAbstractMapper.cxx
vtkAbstractPointLocator.cxx
vtkActor2DCollection.cxx
vtkActor2D.cxx
vtkAdjacentVertexIterator.cxx
vtkAlgorithm.cxx
vtkAlgorithmOutput.cxx
vtkAMRBox.cxx
vtkAnnotation.cxx
vtkAnnotationLayers.cxx
vtkAnnotationLayersAlgorithm.cxx
vtkAttributesErrorMetric.cxx
vtkBiQuadraticQuad.cxx
vtkBiQuadraticQuadraticHexahedron.cxx
vtkBiQuadraticQuadraticWedge.cxx
vtkBiQuadraticTriangle.cxx
vtkBSPCuts.cxx
vtkBSPIntersections.cxx
vtkCachedStreamingDemandDrivenPipeline.cxx
vtkCardinalSpline.cxx
vtkCastToConcrete.cxx
vtkCell3D.cxx
vtkCellArray.cxx
vtkCell.cxx
vtkCellData.cxx
vtkCellLinks.cxx
vtkCellLocator.cxx
vtkCellLocatorInterpolatedVelocityField.cxx
vtkCellTypes.cxx
vtkColorTransferFunction.cxx
vtkCompositeDataIterator.cxx
vtkCompositeDataPipeline.cxx
vtkCompositeDataSetAlgorithm.cxx
vtkCompositeDataSet.cxx
vtkComputingResources.cxx
vtkCone.cxx
vtkConvexPointSet.cxx
vtkCoordinate.cxx
vtkCubicLine.cxx
vtkCylinder.cxx
vtkDataObjectAlgorithm.cxx
vtkDataObjectCollection.cxx
vtkDataObject.cxx
vtkDataObjectSource.cxx
vtkDataObjectTypes.cxx
vtkDataSetAlgorithm.cxx
vtkDataSetAttributes.cxx
vtkDataSetCollection.cxx
vtkDataSet.cxx
vtkDataSetSource.cxx
vtkDataSetToDataSetFilter.cxx
vtkDataSetToImageFilter.cxx
vtkDataSetToPolyDataFilter.cxx
vtkDataSetToStructuredGridFilter.cxx
vtkDataSetToStructuredPointsFilter.cxx
vtkDataSetToUnstructuredGridFilter.cxx
vtkDemandDrivenPipeline.cxx
vtkDirectedAcyclicGraph.cxx
vtkDirectedGraphAlgorithm.cxx
vtkDirectedGraph.cxx
vtkDiscretizableColorTransferFunction.cxx
vtkDistributedGraphHelper.cxx
vtkEdgeListIterator.cxx
vtkEmptyCell.cxx
vtkExecutionScheduler.cxx
vtkExecutive.cxx
vtkExecutiveCollection.cxx
vtkExplicitCell.cxx
vtkFieldData.cxx
vtkFilteringInformationKeyManager.cxx
vtkGenericAdaptorCell.cxx
vtkGenericAttributeCollection.cxx
vtkGenericAttribute.cxx
vtkGenericCell.cxx
vtkGenericCellIterator.cxx
vtkGenericCellTessellator.cxx
vtkGenericDataSetAlgorithm.cxx
vtkGenericDataSet.cxx
vtkGenericEdgeTable.cxx
vtkGenericInterpolatedVelocityField.cxx
vtkGenericPointIterator.cxx
vtkGenericSubdivisionErrorMetric.cxx
vtkGeometricErrorMetric.cxx
vtkGraphAlgorithm.cxx
vtkGraph.cxx
vtkGraphEdge.cxx
vtkGraphInternals.cxx
vtkHexagonalPrism.cxx
vtkHexahedron.cxx
vtkHierarchicalBoxDataIterator.cxx
vtkHierarchicalBoxDataSetAlgorithm.cxx
vtkHierarchicalBoxDataSet.cxx
vtkHyperOctreeAlgorithm.cxx
vtkHyperOctreeCursor.cxx
vtkHyperOctree.cxx
vtkHyperOctreePointsGrabber.cxx
vtkImageAlgorithm.cxx
vtkImageData.cxx
vtkImageInPlaceFilter.cxx
vtkImageIterator.cxx
vtkImageMultipleInputFilter.cxx
vtkImageMultipleInputOutputFilter.cxx
vtkImageProgressIterator.cxx
vtkImageSource.cxx
vtkImageToImageFilter.cxx
vtkImageToStructuredPoints.cxx
vtkImageTwoInputFilter.cxx
vtkImplicitBoolean.cxx
vtkImplicitDataSet.cxx
vtkImplicitHalo.cxx
vtkImplicitSelectionLoop.cxx
vtkImplicitSum.cxx
vtkImplicitVolume.cxx
vtkImplicitWindowFunction.cxx
vtkIncrementalOctreeNode.cxx
vtkIncrementalOctreePointLocator.cxx
vtkIncrementalPointLocator.cxx
vtkInEdgeIterator.cxx
vtkInformation.cxx
vtkInformationExecutivePortKey.cxx
vtkInformationExecutivePortVectorKey.cxx
vtkInterpolatedVelocityField.cxx
vtkKdNode.cxx
vtkKdTree.cxx
vtkKdTreePointLocator.cxx
vtkKochanekSpline.cxx
vtkLine.cxx
vtkLocator.cxx
vtkMapper2D.cxx
vtkMergePoints.cxx
vtkModifiedBSPTree.cxx
vtkMultiBlockDataSetAlgorithm.cxx
vtkMultiBlockDataSet.cxx
vtkMultiPieceDataSet.cxx
vtkMutableDirectedGraph.cxx
vtkMutableUndirectedGraph.cxx
vtkNonLinearCell.cxx
vtkNonMergingPointLocator.cxx
vtkOctreePointLocator.cxx
vtkOctreePointLocatorNode.cxx
vtkOrderedTriangulator.cxx
vtkOutEdgeIterator.cxx
vtkParametricSpline.cxx
vtkPassInputTypeAlgorithm.cxx
vtkPentagonalPrism.cxx
vtkPerlinNoise.cxx
vtkPiecewiseFunctionAlgorithm.cxx
vtkPiecewiseFunction.cxx
vtkPiecewiseFunctionShiftScale.cxx
vtkPixel.cxx
vtkPlanesIntersection.cxx
vtkPointData.cxx
vtkPointLocator.cxx
vtkPointSetAlgorithm.cxx
vtkPointSet.cxx
vtkPointSetSource.cxx
vtkPointSetToPointSetFilter.cxx
vtkPointsProjectedHull.cxx
vtkPolyDataAlgorithm.cxx
vtkPolyDataCollection.cxx
vtkPolyData.cxx
vtkPolyDataSource.cxx
vtkPolyDataToPolyDataFilter.cxx
vtkPolygon.cxx
vtkPolyLine.cxx
vtkPolyVertex.cxx
vtkProcessObject.cxx
vtkPropAssembly.cxx
vtkPyramid.cxx
vtkQuad.cxx
vtkQuadraticEdge.cxx
vtkQuadraticHexahedron.cxx
vtkQuadraticLinearQuad.cxx
vtkQuadraticLinearWedge.cxx
vtkQuadraticPyramid.cxx
vtkQuadraticQuad.cxx
vtkQuadraticTetra.cxx
vtkQuadraticTriangle.cxx
vtkQuadraticWedge.cxx
vtkRectilinearGridAlgorithm.cxx
vtkRectilinearGrid.cxx
vtkRectilinearGridSource.cxx
vtkRectilinearGridToPolyDataFilter.cxx
vtkScalarTree.cxx
vtkSelectionAlgorithm.cxx
vtkSelection.cxx
vtkSelectionNode.cxx
vtkSimpleCellTessellator.cxx
vtkSimpleImageToImageFilter.cxx
vtkSimpleScalarTree.cxx
vtkSmoothErrorMetric.cxx
vtkSource.cxx
vtkSphere.cxx
vtkSpline.cxx
vtkStreamingDemandDrivenPipeline.cxx
vtkStructuredGridAlgorithm.cxx
vtkStructuredGrid.cxx
vtkStructuredGridSource.cxx
vtkStructuredGridToPolyDataFilter.cxx
vtkStructuredGridToStructuredGridFilter.cxx
vtkStructuredPointsCollection.cxx
vtkStructuredPoints.cxx
vtkStructuredPointsSource.cxx
vtkStructuredPointsToPolyDataFilter.cxx
vtkStructuredPointsToStructuredPointsFilter.cxx
vtkStructuredPointsToUnstructuredGridFilter.cxx
vtkSuperquadric.cxx
vtkTableAlgorithm.cxx
vtkTable.cxx
vtkTemporalDataSetAlgorithm.cxx
vtkTemporalDataSet.cxx
vtkTetra.cxx
vtkThreadedImageAlgorithm.cxx
vtkThreadedStreamingPipeline.cxx
vtkTreeAlgorithm.cxx
vtkTree.cxx
vtkTreeDFSIterator.cxx
vtkTriangle.cxx
vtkTriangleStrip.cxx
vtkTriQuadraticHexahedron.cxx
vtkTrivialProducer.cxx
vtkUndirectedGraphAlgorithm.cxx
vtkUndirectedGraph.cxx
vtkUniformGrid.cxx
vtkUnstructuredGridAlgorithm.cxx
vtkUnstructuredGrid.cxx
vtkUnstructuredGridSource.cxx
vtkUnstructuredGridToPolyDataFilter.cxx
vtkUnstructuredGridToUnstructuredGridFilter.cxx
vtkVertex.cxx
vtkVertexListIterator.cxx
vtkViewDependentErrorMetric.cxx
vtkViewport.cxx
vtkVoxel.cxx
vtkWedge.cxx
)

#set the includ dirs
set(lib_includes  "${VTK_src_root} ${VTK_src_root}/Common ${VTK_src_root}/IO ${VTK_src_root}/Filtering")
set(lib_includes "${lib_includes} ${CMAKE_CURRENT_SOURCE_DIR}/vtk_includes" )

#define some variables used by the define_android_manual macro
set(cxx_extension .cxx) #used by android ndk LOCAL_CPP_EXTENSION 
set(module_root_path ${VTK_src_root}/Filtering) #LOCAL_PATH all srcs need to be relative to this


define_android_manual( Filtering "${Kit_SRCS}" 
    "${lib_includes}" static)

