import React from 'react';
import recommendationCSS from "../../assets/css/newUser.module.css";
import navbarCSS from "../../assets/css/navbar.module.css";
const people = () => {
    return(
    <div>
         <div>
            <div className={recommendationCSS.addContainer}>
			<h2 className={recommendationCSS.addAccessHeader}>Recommendations</h2>
		</div>
		<div className={recommendationCSS.searchContainer}>
			<input type="text" className={recommendationCSS.searchInput} placeholder="Search..." />
			<button className={recommendationCSS.searchButton}>Search</button>
		</div>
		<table className={recommendationCSS.customTable}>
			<thead>
				<tr>
					<th>User Email</th>
					<th>Role</th>
					<th>Course Change Recommendation</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>user1@example.com</td>
					<td>Program Cordinator</td>
					<td>Suggest providing more practice questions with hints.</td>
				</tr>
				<tr>
					<td>user2@example.com</td>
					<td>QA Officer</td>
					<td>Consider making the exam questions easier.</td>
				</tr>
				<tr>
					<td>user3@example.com</td>
					<td>QA Officer</td>
					<td>No change recommended at this time.</td>
				</tr>
			</tbody>
		</table>

	<div className={navbarCSS.chatContainer}>
    	<div className={navbarCSS.chatHeader}>Instant Messaging</div>
    	<div className={navbarCSS.chatMessages}>
        	<div className={navbarCSS.message}>Alice: Hi there!</div>
        	<div className={navbarCSS.message}>Bob: Hey, Alice! How are you?</div>
        	<div className={navbarCSS.message}>Alice: I'm good, thanks. How about you?</div>
        	<div className={navbarCSS.message}>Bob: I'm doing well too.</div>
        	<div className={navbarCSS.message}>Alice: That's great to hear!</div>
    	</div>
    	<div className={navbarCSS.chatInput}>
        	<input type="text" placeholder="Type your message..." />
        	<button>Send</button>
    	</div>

        </div>
 
    </div>
    </div>
    );
}