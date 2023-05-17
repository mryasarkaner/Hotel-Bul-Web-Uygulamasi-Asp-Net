"use strict";(self.webpackChunk_N_E=self.webpackChunk_N_E||[]).push([[5958],{35958:function(n,t,e){e.d(t,{Q:function(){return Y}});var i=e(85893),o=e(67294),d=e(91503),c=e(48286),a=e(38873),r=e(90656),s=e(34486),u=e(24838),A=e(26042),m=e(69396),I=e(29815),f=e(78718),T=e.n(f),O=e(33858),D=function(n,t,e){var i=n.destinationAndAccommodationMapping.order.slice(0,t),o=Object.entries(T()(n.destinationAndAccommodationMapping.destinations,(0,O.K)(i))).reduce((function(n,t){var i,o=t[1],d=o.accommodations.slice(0,e);return n.destinations[(0,O.qC)(o.nsid)]=(0,m.Z)((0,A.Z)({},o),{accommodations:d}),(i=n.accommodationNsids).push.apply(i,(0,I.Z)(d)),n}),{destinations:{},accommodationNsids:[]});return(0,m.Z)((0,A.Z)({},n),{destinationAndAccommodationMapping:{destinations:o.destinations,order:i}})},p=e(66678),E=e.n(p),C=e(50413),v=e(39413),_=e(94336),l=e(22358),M=e(18446),N=e.n(M),g=function(n,t){return N()(n.checkIn,t.checkIn)&&N()(n.checkOut,t.checkOut)&&N()(n.guestConfig,t.guestConfig)},h=e(47730),S=[C.gG.CITY,C.gG.REGION,C.gG.COUNTRY,C.gG.CONTINENT],y=function(n){return{ns:n.ns,id:n.id}},R=function(n,t,e){return{destinationIndex:(0,_.FT)(t)?n.destinationAndAccommodationMapping.order.findIndex((function(n){return(0,_.AP)(n,t)})):n.destinationAndAccommodationMapping.order.findIndex((function(n){return(0,_.AP)(n,e[0].nsid)})),destinationNsidToAdd:(0,_.FT)(t)?t:y(e[0].nsid)}},k=function(n,t){switch(t.type){case s.$Y.RECENT_ACTIVITY_INITIALIZED:case s.$Y.RECENT_ACTIVITY_DELETED:return t.payload;case s.$Y.RECENT_ACTIVITY_ACCOMMODATION_ADDED:return function(n,t){var e=n.accommodation,i=n.searchState,o=n.platform,d=n.advertiser,c=i.nsids,a=i.stayPeriod,r=a.checkIn,s=a.checkOut,u=a.isDefaultDates,A=i.guestConfig,m=(0,l.Hy)(c);if(!m||!(0,h.u)(e.nsid)||!e.hierarchy)return t;var I=E()(t),f=y(e.nsid),T=(0,O.qC)(f),D={nsid:f,advertiser:d,platform:o,guestConfig:A,checkIn:r,checkOut:s,isDefaultDates:u,addedOn:(0,v.x)()},p=t.viewedAccommodationOrder.findIndex((function(n){return(0,_.AP)(n,f)}));p>-1&&I.viewedAccommodationOrder.splice(p,1),I.viewedAccommodationOrder.unshift(f),I.viewedAccommodations[T]=D;var C=e.hierarchy.filter((function(n){return S.includes(n.typeObject.nsid.id)}));t.destinationAndAccommodationMapping.order.filter((function(n){return C.some((function(t){return(0,_.AP)(t.nsid,n)}))})).forEach((function(n){var t=I.destinationAndAccommodationMapping.destinations[(0,O.qC)(n)];if(g(t,D)){var e=t.accommodations.findIndex((function(n){return(0,_.AP)(n,f)}));e>-1&&t.accommodations.splice(e,1),t.accommodations.unshift(f)}}));var M=R(t,m,C),N=M.destinationIndex,k=M.destinationNsidToAdd;if(N>-1){var w=I.destinationAndAccommodationMapping.destinations[(0,O.qC)(k)];if(g(w,D)){var x=w.accommodations.findIndex((function(n){return(0,_.AP)(n,D.nsid)}));x>-1&&w.accommodations.splice(x,1),w.accommodations.unshift(f)}else w.guestConfig=D.guestConfig,w.checkIn=D.checkIn,w.checkOut=D.checkOut,w.isDefaultDates=D.isDefaultDates,w.accommodations=[f];I.destinationAndAccommodationMapping.order.splice(N,1)}else I.destinationAndAccommodationMapping.destinations[(0,O.qC)(k)]={nsid:k,guestConfig:A,checkIn:r,checkOut:s,isDefaultDates:u,accommodations:[f],addedOn:(0,v.x)()};return I.destinationAndAccommodationMapping.order.unshift(k),I}(t.payload,n);case s.$Y.RECENT_ACTIVITY_DESTINATION_ADDED:return function(n,t){var e=n.searchState,i=n.resolvedConcept,o=e.nsids,d=e.stayPeriod,c=d.checkIn,a=d.checkOut,r=d.isDefaultDates,s=e.guestConfig,u=(0,l.Hy)(o);if(!u||!(0,h.k)(u))return t;var A=E()(t),m=R(t,u,(i.hierarchy||[]).filter((function(n){return S.includes(n.typeObject.nsid.id)}))),I=m.destinationIndex,f=m.destinationNsidToAdd;if(I>-1){var T=A.destinationAndAccommodationMapping.destinations[(0,O.qC)(f)];g(T,{guestConfig:s,checkOut:a,checkIn:c})||(T.accommodations=[]),T.guestConfig=s,T.checkIn=c,T.checkOut=a,T.addedOn=(0,v.x)(),T.isDefaultDates=r,A.destinationAndAccommodationMapping.order.splice(I,1)}else A.destinationAndAccommodationMapping.destinations[(0,O.qC)(f)]={nsid:f,guestConfig:s,checkIn:c,checkOut:a,isDefaultDates:r,accommodations:[],addedOn:(0,v.x)()};return A.destinationAndAccommodationMapping.order.unshift(f),A}(t.payload,n);default:return n}},w={viewedAccommodations:{},viewedAccommodationOrder:[],destinationAndAccommodationMapping:{destinations:{},order:[]}},x=function(){var n=(0,a.F)(),t=r.hq.get(),e=(0,o.useMemo)((function(){var n=(0,u.Dn)();return n&&n.__version===u.Lp?n:w}),[]),i=(0,o.useReducer)(k,e),d=i[0],A=i[1];(0,c.Z)((function(){(0,u.gx)(D(d,s.DA.DESTINATIONS_STORAGE_LIMIT,s.DA.ACCOMMODATIONS_STORAGE_LIMIT))}));var m=(0,o.useCallback)((function(e){var i=e.accommodation,o=e.advertiser,d=e.searchState,c=d;c.stayPeriod.isDefaultDates=!t,A({type:s.$Y.RECENT_ACTIVITY_ACCOMMODATION_ADDED,payload:{accommodation:i,searchState:d,platform:n,advertiser:o}})}),[A,n,t]),I=(0,o.useCallback)((function(n){var e=n.searchState,i=n.resolvedConcept,o=e;o.stayPeriod.isDefaultDates=!t,A({type:s.$Y.RECENT_ACTIVITY_DESTINATION_ADDED,payload:{searchState:o,resolvedConcept:i}})}),[A,t]),f=(0,o.useCallback)((function(){A({type:s.$Y.RECENT_ACTIVITY_DELETED,payload:w})}),[]),T=(0,o.useMemo)((function(){return{addRecentActivityAccommodation:m,addRecentActivityDestination:I,deleteAllRecentActivity:f}}),[m,I,f]);return{state:D(d,s.DA.NUMBER_OF_DESTINATIONS,s.DA.NUMBER_OF_ACCOMMODATIONS),methods:T}},Y=function(n){var t=n.children,e=x(),o=e.state,c=e.methods;return(0,i.jsx)(d.Q.Provider,{value:o,children:(0,i.jsx)(d.P.Provider,{value:c,children:t})})}},91503:function(n,t,e){e.d(t,{P:function(){return d},Q:function(){return o}});var i=e(67294),o=(0,i.createContext)(null),d=(0,i.createContext)(null)},34486:function(n,t,e){var i,o,d,c,a,r,s;e.d(t,{$Y:function(){return i},DA:function(){return c},N1:function(){return d},an:function(){return o}}),(a=i||(i={})).RECENT_ACTIVITY_INITIALIZED="recentActivityInitialized",a.RECENT_ACTIVITY_ACCOMMODATION_ADDED="recentActivityAccommodationAdded",a.RECENT_ACTIVITY_DESTINATION_ADDED="recentActivityDestinationAdded",a.RECENT_ACTIVITY_DELETED="recentActivityDeleted",(o||(o={})).RECENT_SEARCH_ADDED="recentSearchAdded",(r=d||(d={}))[r.NUMBER_OF_SUGGESTIONS=5]="NUMBER_OF_SUGGESTIONS",r[r.STORAGE_LIMIT=5]="STORAGE_LIMIT",(s=c||(c={}))[s.NUMBER_OF_ACCOMMODATIONS=2]="NUMBER_OF_ACCOMMODATIONS",s[s.NUMBER_OF_DESTINATIONS=2]="NUMBER_OF_DESTINATIONS",s[s.DESTINATIONS_STORAGE_LIMIT=2]="DESTINATIONS_STORAGE_LIMIT",s[s.ACCOMMODATIONS_STORAGE_LIMIT=10]="ACCOMMODATIONS_STORAGE_LIMIT"},47730:function(n,t,e){e.d(t,{k:function(){return d},u:function(){return o}});var i=e(94336),o=function(n){return(0,i.Mw)(n)},d=function(n){return(0,i.FT)(n)||(0,i.mr)(n)}},24838:function(n,t,e){e.d(t,{Dn:function(){return m},Lp:function(){return I},gx:function(){return f}});var i=e(26042),o=e(69396),d=e(10253),c=e(94336),a=e(15841),r=e(22292),s=e(63764),u=e(33375),A="rc_activity",m=function(){var n,t=u.I.getItem(A);return n=t,(0,s.Kn)(n)&&(0,s.wH)("viewedAccommodations",n)&&(0,s.wH)("viewedAccommodationOrder",n)&&(0,s.wH)("destinationAndAccommodationMapping",n)&&(0,r.kJ)(n.viewedAccommodationOrder)&&n.viewedAccommodationOrder.every(c.xM)&&(0,s.Kn)(n.viewedAccommodations)&&(0,s.Kn)(n.destinationAndAccommodationMapping)&&Object.entries(n.viewedAccommodations).every((function(t){var e=(0,d.Z)(t,2),i=e[0],o=e[1],u=(0,a.vB)(i);return!(!(0,c.xM)(u)||!(0,s.wH)("nsid",o)||!(0,s.wH)("platform",o)||!(0,s.wH)("addedOn",o)||!(0,c.AP)(u,o.nsid)||(0,r.kJ)(n.viewedAccommodationOrder)&&n.viewedAccommodationOrder.every(c.xM)&&!n.viewedAccommodationOrder.find((function(n){return(0,c.AP)(n,o.nsid)})))}))&&(0,s.wH)("order",n.destinationAndAccommodationMapping)&&(0,s.wH)("destinations",n.destinationAndAccommodationMapping)&&(0,s.Kn)(n.destinationAndAccommodationMapping.destinations)&&Object.entries(n.destinationAndAccommodationMapping.destinations).every((function(n){var t=(0,d.Z)(n,2),e=t[0],i=t[1];if(!(0,s.Kn)(i))return!1;var o=(0,a.vB)(e);return!(!(0,c.xM)(o)||!(0,s.wH)("nsid",i)||!(0,s.wH)("accommodations",i)||!(0,s.wH)("addedOn",i)||(0,r.kJ)(i.accommodations)&&!i.accommodations.every(c.xM))}))?t:null},I=0,f=function(n){u.I.setItem(A,(0,o.Z)((0,i.Z)({},n),{__lastUpdatedAt:new Date,__version:I}))}}}]);