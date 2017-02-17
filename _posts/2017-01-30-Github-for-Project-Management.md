---
layout: post
title:  "Github for Project Management"
date:   2017-01-30
desc: "Using github for project management and related artifacts"
keywords: "Opensource,project management"
categories: [FOSS]
tags: [git,GitHub,PMO]
icon: icon-ubuntu
---
I started my career as a construction project manager in early 90s and then moved into IT project management in 2001. Along the way, I got good exposure to various PMO tools and methodologies.

Some of the key responsibilities of a Project Manager are :-

### Tailoring a Project Methodology 

Depending on your project, you need to fist pick a methodology. Typically, for SAP implementations, ASAP is the obvious choice though it has lots of limitations that come with a water fall method. For other software projects, Agile is pretty good. But choosing a method is not all, you need to tailor it to meet your project needs. A method normally comes with  huge number of milestones, artifacts and templates. You don't need all of them for your project. Its very important to identify what is needed for your project and make it a formal communication. 

### Setting up a document management process
Documents are key outcome of project. A good document management process, defines the repositories, review and approval process, version management, and long term storage. In many industries (eg Pharmaceuticals) you may be required to keep a hard copy of all documents to meet compliance requirements. 

### Project governance procedures
Some of these will come as a part of methodology but its very important to build and sign off all the project governance procedures early on as part of the project prep phase. Project Charter, Change management process, issue management, Communications process, Technical Architecture, Configuration Management, Source code management, Testing strategy are some of the examples. 

### Project Schedule
Typically Microsoft project is a 'go to' tool for scheduling the project. For very large projects Primevera or SAP project System may be a better choice. These enterprise level tools, allow better financial integration, budget approvals and procurement. For smaller projects Smartsheet offers a built in template that looks like a spreadsheet but has much better collaboration and tracking features. Something like MS project server but lot easier to implement.

### Project progress and status reporting
The key responsibility of a project manager is to track the status of project and communicate up and down to all the stakeholders. Easier said than done :-) Its essential to agree upon on the frequency and format of status reporting. Its always better to set up a biweekly status meeting with project sponsor and key stakeholders. 

### Resource Management 
As a PM, one of the key deliverable is a resource ramp up and ramp down plan. For a software project, manpower is normally the key resource. For an engineering project, you may need a separate plan for equipment a and tools. Software license is another area that might need its own register.

# Github can be a handy platform for many of these tasks. 

For example version and configuration management are built into git by design. It can act as a document repository in addition to your code and media. Issue management features are very well thought of and well integrated with repositories. There is a wiki for every repository for internal project documentation. You can define multiple small projects with in a repository and manage them through activity cards. You can use Jekyll templates for end user documentation an publish it on Git hub pages for end users. Jekyll and gh pages enable  static single page websites that load fast and mobile friendly-  A great option for publishing your project's external website.

Github comes with numerous 'integrations' that can connect it to various collaboration tools e.g. Slack. 

The best part is offline access to repositories and wiki. Your team can fork the repositories for their features or clone them to local computers giving them speed and offline access. It is obviously not the solution for all PMO pains,  but it can sure provide a robust platform for core functions. The only downside is that you need to invest sometime to bring your team up to speed with basic concepts of git and github. I think that's a good investment for project as well as the career of your project team. 

