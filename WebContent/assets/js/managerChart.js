



function charAjaxCategory() {
    $.ajax({
      url: '/manager/charDataOk.manager',
      type: 'get',
      dataType: 'json',
      success: function(result) {
	
       const serverData = result;

       createChart1(serverData);
       createChart2(serverData);

      },
      error: function(xhr, status, error) {
        console.log(error);
        reject(error); // AJAX 요청이 실패하면 reject()를 호출
      },
    });
}


function createChart1(serverData) {
	
	const paymentDate =[];
		serverData.dailySales.forEach((item) => {
		  paymentDate.push(item.paymentDate);
		});
		
	const totalRevenue =[];
		serverData.dailySales.forEach((item) => {
		  totalRevenue.push(item.totalRevenue);
		});
	
	const ctx = document.getElementById("myChart").getContext("2d");
	const myChart = new Chart(ctx, {
	  type: "line",
	  data: {
	    labels: paymentDate,
	    datasets: [
	      {
		
	        // label: "월별 총 매출",
	        label: "일별 총 매출",
	        data: totalRevenue,
	        backgroundColor: [
	          "rgba(255, 99, 132, 0.2)",
	          "rgba(54, 162, 235, 0.2)",
	          "rgba(255, 206, 86, 0.2)",
	          "rgba(75, 192, 192, 0.2)",
	          "rgba(153, 102, 255, 0.2)",
	          "rgba(255, 159, 64, 0.2)",
	          "rgba(255, 159, 64, 0.2)",
	        ],
	        borderColor: [
	          "rgba(255, 99, 132, 1)",
	          "rgba(54, 162, 235, 1)",
	          "rgba(255, 206, 86, 1)",
	          "rgba(75, 192, 192, 1)",
	          "rgba(153, 102, 255, 1)",
	          "rgba(255, 159, 64, 1)",
	          "rgba(255, 159, 64, 0.2)",
	        ],
	        borderWidth: 1,
	      },
	    ],
	  },
	  options: {
	    scales: {
	      y: {
	        beginAtZero: true,
	      },
	    },
	  },
	});
}

function createChart2(serverData) {
	// 카테고리별 조회수
   const viewCounts = [];
		serverData.cateViewCounts.forEach((item) => {
		  viewCounts.push(item.postViewCount);
		});
		
	// 카테고리 목록
	const categoryNames =[];
		serverData.cateViewCounts.forEach((name) => {
		  categoryNames.push(name.categoryName);
		});

  /*const viewCounts = serverData.map((item) => item.postViewCount);*/

	const cax = document.getElementById("mycate").getContext("2d");
	const testtest = new Chart(cax, {
	  // The type of chart we want to create
	  type: "bar",
	
	  // The data for our dataset
	  data: {
		// 카테고리 이름
	    labels: categoryNames,
	    datasets: [
	      {
	        label: "카테고리 별 조회수",
	        backgroundColor: [
	          "rgba(255, 99, 132, 0.5)",
	          "rgba(54, 162, 235, 0.5)",
	          "rgba(255, 206, 86, 0.5)",
	          "rgba(75, 192, 192, 0.5)",
	          "rgba(153, 102, 255, 0.5)",
	          "rgba(255, 159, 64, 0.5)",
	          "rgba(255, 159, 64, 0.5)",
	          "rgba(255, 159, 64, 0.5)",
	          "rgba(255, 159, 64, 0.5)",
	          "rgba(255, 159, 64, 0.5)",
	          "rgba(255, 159, 64, 0.5)",
	        ],
	        borderColor: [
	          "rgb(255, 99, 132,1.5)",
	          "rgba(54, 162, 235, 1.5)",
	          "rgba(255, 206, 86, 1.5)",
	          "rgba(75, 192, 192, 1.5)",
	          "rgba(153, 102, 255, 1.5)",
	          "rgba(255, 159, 64, 1.5)",
	          "rgba(255, 159, 64, 1.5)",
	          "rgba(255, 159, 64, 1.5)",
	          "rgba(255, 159, 64, 1.5)",
	          "rgba(255, 159, 64, 1.5)",
	          "rgba(255, 159, 64, 1.5)",
	          "rgba(255, 159, 64, 1.5)",
	        ],
	
			// db에 있는 데이터 넣어야할  곳
	        data: viewCounts,
	      },
	    ],
	  },
	
	  // Configuration options go here
	  options: {
	    title: {
	      display: true,
	      fontColor: "rgba(46, 49, 49, 1)",
	    },
	    legend: {
	      labels: {
	        fontColor: "rgba(83, 51, 237, 1)",
	        fontSize: 15,
	      },
	    },
	    scales: {
	      xAxes: [
	        {
	          ticks: {
	            fontColor: "rgba(27, 163, 156, 1)",
	            fontSize: "15",
	          },
	        },
	      ],
	      yAxes: [
	        {
	          ticks: {
	            beginAtZero: true,
	            fontColor: "rgba(246, 36, 89, 1)",
	            fontSize: "15",
	          },
	        },
	      ],
	    },
	  },
	});
}



charAjaxCategory();












