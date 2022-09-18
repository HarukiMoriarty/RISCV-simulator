
riscv-elf/lab0.riscv:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <exit>:
   100e8:	ff010113          	addi	sp,sp,-16
   100ec:	00000593          	li	a1,0
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	00113423          	sd	ra,8(sp)
   100f8:	00050413          	mv	s0,a0
   100fc:	48c000ef          	jal	ra,10588 <__call_exitprocs>
   10100:	f481b503          	ld	a0,-184(gp) # 11f80 <_global_impure_ptr>
   10104:	05853783          	ld	a5,88(a0)
   10108:	00078463          	beqz	a5,10110 <exit+0x28>
   1010c:	000780e7          	jalr	a5
   10110:	00040513          	mv	a0,s0
   10114:	6b4000ef          	jal	ra,107c8 <_exit>

0000000000010118 <register_fini>:
   10118:	00000793          	li	a5,0
   1011c:	00078863          	beqz	a5,1012c <register_fini+0x14>
   10120:	00010537          	lui	a0,0x10
   10124:	6b050513          	addi	a0,a0,1712 # 106b0 <__libc_fini_array>
   10128:	5e40006f          	j	1070c <atexit>
   1012c:	00008067          	ret

0000000000010130 <_start>:
   10130:	00002197          	auipc	gp,0x2
   10134:	f0818193          	addi	gp,gp,-248 # 12038 <__global_pointer$>
   10138:	f6018513          	addi	a0,gp,-160 # 11f98 <completed.1>
   1013c:	fa018613          	addi	a2,gp,-96 # 11fd8 <__BSS_END__>
   10140:	40a60633          	sub	a2,a2,a0
   10144:	00000593          	li	a1,0
   10148:	364000ef          	jal	ra,104ac <memset>
   1014c:	00000517          	auipc	a0,0x0
   10150:	5c050513          	addi	a0,a0,1472 # 1070c <atexit>
   10154:	00050863          	beqz	a0,10164 <_start+0x34>
   10158:	00000517          	auipc	a0,0x0
   1015c:	55850513          	addi	a0,a0,1368 # 106b0 <__libc_fini_array>
   10160:	5ac000ef          	jal	ra,1070c <atexit>
   10164:	2ac000ef          	jal	ra,10410 <__libc_init_array>
   10168:	00012503          	lw	a0,0(sp)
   1016c:	00810593          	addi	a1,sp,8
   10170:	00000613          	li	a2,0
   10174:	1d4000ef          	jal	ra,10348 <main>
   10178:	f71ff06f          	j	100e8 <exit>

000000000001017c <__do_global_dtors_aux>:
   1017c:	ff010113          	addi	sp,sp,-16
   10180:	00813023          	sd	s0,0(sp)
   10184:	f601c783          	lbu	a5,-160(gp) # 11f98 <completed.1>
   10188:	00113423          	sd	ra,8(sp)
   1018c:	02079263          	bnez	a5,101b0 <__do_global_dtors_aux+0x34>
   10190:	00000793          	li	a5,0
   10194:	00078a63          	beqz	a5,101a8 <__do_global_dtors_aux+0x2c>
   10198:	00012537          	lui	a0,0x12
   1019c:	81c50513          	addi	a0,a0,-2020 # 1181c <__FRAME_END__>
   101a0:	00000097          	auipc	ra,0x0
   101a4:	000000e7          	jalr	zero # 0 <exit-0x100e8>
   101a8:	00100793          	li	a5,1
   101ac:	f6f18023          	sb	a5,-160(gp) # 11f98 <completed.1>
   101b0:	00813083          	ld	ra,8(sp)
   101b4:	00013403          	ld	s0,0(sp)
   101b8:	01010113          	addi	sp,sp,16
   101bc:	00008067          	ret

00000000000101c0 <frame_dummy>:
   101c0:	00000793          	li	a5,0
   101c4:	00078c63          	beqz	a5,101dc <frame_dummy+0x1c>
   101c8:	00012537          	lui	a0,0x12
   101cc:	f6818593          	addi	a1,gp,-152 # 11fa0 <object.0>
   101d0:	81c50513          	addi	a0,a0,-2020 # 1181c <__FRAME_END__>
   101d4:	00000317          	auipc	t1,0x0
   101d8:	00000067          	jr	zero # 0 <exit-0x100e8>
   101dc:	00008067          	ret

00000000000101e0 <print_d>:
   101e0:	fe010113          	addi	sp,sp,-32
   101e4:	00813c23          	sd	s0,24(sp)
   101e8:	02010413          	addi	s0,sp,32
   101ec:	00050793          	mv	a5,a0
   101f0:	fef42623          	sw	a5,-20(s0)
   101f4:	00200893          	li	a7,2
   101f8:	00000073          	ecall
   101fc:	00000013          	nop
   10200:	01813403          	ld	s0,24(sp)
   10204:	02010113          	addi	sp,sp,32
   10208:	00008067          	ret

000000000001020c <print_s>:
   1020c:	fe010113          	addi	sp,sp,-32
   10210:	00813c23          	sd	s0,24(sp)
   10214:	02010413          	addi	s0,sp,32
   10218:	fea43423          	sd	a0,-24(s0)
   1021c:	00000893          	li	a7,0
   10220:	00000073          	ecall
   10224:	00000013          	nop
   10228:	01813403          	ld	s0,24(sp)
   1022c:	02010113          	addi	sp,sp,32
   10230:	00008067          	ret

0000000000010234 <print_c>:
   10234:	fe010113          	addi	sp,sp,-32
   10238:	00813c23          	sd	s0,24(sp)
   1023c:	02010413          	addi	s0,sp,32
   10240:	00050793          	mv	a5,a0
   10244:	fef407a3          	sb	a5,-17(s0)
   10248:	00100893          	li	a7,1
   1024c:	00000073          	ecall
   10250:	00000013          	nop
   10254:	01813403          	ld	s0,24(sp)
   10258:	02010113          	addi	sp,sp,32
   1025c:	00008067          	ret

0000000000010260 <exit_proc>:
   10260:	ff010113          	addi	sp,sp,-16
   10264:	00813423          	sd	s0,8(sp)
   10268:	01010413          	addi	s0,sp,16
   1026c:	00300893          	li	a7,3
   10270:	00000073          	ecall
   10274:	00000013          	nop
   10278:	00813403          	ld	s0,8(sp)
   1027c:	01010113          	addi	sp,sp,16
   10280:	00008067          	ret

0000000000010284 <read_char>:
   10284:	fe010113          	addi	sp,sp,-32
   10288:	00813c23          	sd	s0,24(sp)
   1028c:	02010413          	addi	s0,sp,32
   10290:	00400893          	li	a7,4
   10294:	00000073          	ecall
   10298:	00050793          	mv	a5,a0
   1029c:	fef407a3          	sb	a5,-17(s0)
   102a0:	fef44783          	lbu	a5,-17(s0)
   102a4:	00078513          	mv	a0,a5
   102a8:	01813403          	ld	s0,24(sp)
   102ac:	02010113          	addi	sp,sp,32
   102b0:	00008067          	ret

00000000000102b4 <read_num>:
   102b4:	fe010113          	addi	sp,sp,-32
   102b8:	00813c23          	sd	s0,24(sp)
   102bc:	02010413          	addi	s0,sp,32
   102c0:	00500893          	li	a7,5
   102c4:	00000073          	ecall
   102c8:	00050793          	mv	a5,a0
   102cc:	fef43423          	sd	a5,-24(s0)
   102d0:	fe843783          	ld	a5,-24(s0)
   102d4:	00078513          	mv	a0,a5
   102d8:	01813403          	ld	s0,24(sp)
   102dc:	02010113          	addi	sp,sp,32
   102e0:	00008067          	ret

00000000000102e4 <CAS>:
   102e4:	fc010113          	addi	sp,sp,-64
   102e8:	02813c23          	sd	s0,56(sp)
   102ec:	04010413          	addi	s0,sp,64
   102f0:	fca43c23          	sd	a0,-40(s0)
   102f4:	fcb43823          	sd	a1,-48(s0)
   102f8:	fcc43423          	sd	a2,-56(s0)
   102fc:	fe042623          	sw	zero,-20(s0)
   10300:	fd843603          	ld	a2,-40(s0)
   10304:	fc843703          	ld	a4,-56(s0)
   10308:	fd043683          	ld	a3,-48(s0)
   1030c:	fd843783          	ld	a5,-40(s0)

0000000000010310 <retry>:
   10310:	100625af          	lr.w	a1,(a2)
   10314:	00e59a63          	bne	a1,a4,10328 <fail>
   10318:	18d625af          	sc.w	a1,a3,(a2)
   1031c:	fe059ae3          	bnez	a1,10310 <retry>
   10320:	00100593          	li	a1,1
   10324:	0080006f          	j	1032c <success>

0000000000010328 <fail>:
   10328:	00000593          	li	a1,0

000000000001032c <success>:
   1032c:	00058793          	mv	a5,a1
   10330:	fef42623          	sw	a5,-20(s0)
   10334:	fec42783          	lw	a5,-20(s0)
   10338:	00078513          	mv	a0,a5
   1033c:	03813403          	ld	s0,56(sp)
   10340:	04010113          	addi	sp,sp,64
   10344:	00008067          	ret

0000000000010348 <main>:
   10348:	fe010113          	addi	sp,sp,-32
   1034c:	00113c23          	sd	ra,24(sp)
   10350:	00813823          	sd	s0,16(sp)
   10354:	02010413          	addi	s0,sp,32
   10358:	00100713          	li	a4,1
   1035c:	f8e1bc23          	sd	a4,-104(gp) # 11fd0 <dst>
   10360:	fe042623          	sw	zero,-20(s0)
   10364:	0800006f          	j	103e4 <main+0x9c>
   10368:	fec42783          	lw	a5,-20(s0)
   1036c:	00078613          	mv	a2,a5
   10370:	0d300593          	li	a1,211
   10374:	f9818513          	addi	a0,gp,-104 # 11fd0 <dst>
   10378:	f6dff0ef          	jal	ra,102e4 <CAS>
   1037c:	00050793          	mv	a5,a0
   10380:	fef42423          	sw	a5,-24(s0)
   10384:	fe842783          	lw	a5,-24(s0)
   10388:	0007879b          	sext.w	a5,a5
   1038c:	00078a63          	beqz	a5,103a0 <main+0x58>
   10390:	000117b7          	lui	a5,0x11
   10394:	80078513          	addi	a0,a5,-2048 # 10800 <__errno+0x8>
   10398:	e75ff0ef          	jal	ra,1020c <print_s>
   1039c:	0100006f          	j	103ac <main+0x64>
   103a0:	000117b7          	lui	a5,0x11
   103a4:	81078513          	addi	a0,a5,-2032 # 10810 <__errno+0x18>
   103a8:	e65ff0ef          	jal	ra,1020c <print_s>
   103ac:	fe842783          	lw	a5,-24(s0)
   103b0:	00078513          	mv	a0,a5
   103b4:	e2dff0ef          	jal	ra,101e0 <print_d>
   103b8:	00a00513          	li	a0,10
   103bc:	e79ff0ef          	jal	ra,10234 <print_c>
   103c0:	f981b783          	ld	a5,-104(gp) # 11fd0 <dst>
   103c4:	0007879b          	sext.w	a5,a5
   103c8:	00078513          	mv	a0,a5
   103cc:	e15ff0ef          	jal	ra,101e0 <print_d>
   103d0:	00a00513          	li	a0,10
   103d4:	e61ff0ef          	jal	ra,10234 <print_c>
   103d8:	fec42783          	lw	a5,-20(s0)
   103dc:	0017879b          	addiw	a5,a5,1
   103e0:	fef42623          	sw	a5,-20(s0)
   103e4:	fec42783          	lw	a5,-20(s0)
   103e8:	0007871b          	sext.w	a4,a5
   103ec:	00100793          	li	a5,1
   103f0:	f6e7dce3          	bge	a5,a4,10368 <main+0x20>
   103f4:	e6dff0ef          	jal	ra,10260 <exit_proc>
   103f8:	00000793          	li	a5,0
   103fc:	00078513          	mv	a0,a5
   10400:	01813083          	ld	ra,24(sp)
   10404:	01013403          	ld	s0,16(sp)
   10408:	02010113          	addi	sp,sp,32
   1040c:	00008067          	ret

0000000000010410 <__libc_init_array>:
   10410:	fe010113          	addi	sp,sp,-32
   10414:	00813823          	sd	s0,16(sp)
   10418:	000127b7          	lui	a5,0x12
   1041c:	00012437          	lui	s0,0x12
   10420:	01213023          	sd	s2,0(sp)
   10424:	82078793          	addi	a5,a5,-2016 # 11820 <__init_array_start>
   10428:	82040713          	addi	a4,s0,-2016 # 11820 <__init_array_start>
   1042c:	00113c23          	sd	ra,24(sp)
   10430:	00913423          	sd	s1,8(sp)
   10434:	40e78933          	sub	s2,a5,a4
   10438:	02e78263          	beq	a5,a4,1045c <__libc_init_array+0x4c>
   1043c:	40395913          	srai	s2,s2,0x3
   10440:	82040413          	addi	s0,s0,-2016
   10444:	00000493          	li	s1,0
   10448:	00043783          	ld	a5,0(s0)
   1044c:	00148493          	addi	s1,s1,1
   10450:	00840413          	addi	s0,s0,8
   10454:	000780e7          	jalr	a5
   10458:	ff24e8e3          	bltu	s1,s2,10448 <__libc_init_array+0x38>
   1045c:	00012437          	lui	s0,0x12
   10460:	000127b7          	lui	a5,0x12
   10464:	83078793          	addi	a5,a5,-2000 # 11830 <__do_global_dtors_aux_fini_array_entry>
   10468:	82040713          	addi	a4,s0,-2016 # 11820 <__init_array_start>
   1046c:	40e78933          	sub	s2,a5,a4
   10470:	40395913          	srai	s2,s2,0x3
   10474:	02e78063          	beq	a5,a4,10494 <__libc_init_array+0x84>
   10478:	82040413          	addi	s0,s0,-2016
   1047c:	00000493          	li	s1,0
   10480:	00043783          	ld	a5,0(s0)
   10484:	00148493          	addi	s1,s1,1
   10488:	00840413          	addi	s0,s0,8
   1048c:	000780e7          	jalr	a5
   10490:	ff24e8e3          	bltu	s1,s2,10480 <__libc_init_array+0x70>
   10494:	01813083          	ld	ra,24(sp)
   10498:	01013403          	ld	s0,16(sp)
   1049c:	00813483          	ld	s1,8(sp)
   104a0:	00013903          	ld	s2,0(sp)
   104a4:	02010113          	addi	sp,sp,32
   104a8:	00008067          	ret

00000000000104ac <memset>:
   104ac:	00f00313          	li	t1,15
   104b0:	00050713          	mv	a4,a0
   104b4:	02c37a63          	bgeu	t1,a2,104e8 <memset+0x3c>
   104b8:	00f77793          	andi	a5,a4,15
   104bc:	0a079063          	bnez	a5,1055c <memset+0xb0>
   104c0:	06059e63          	bnez	a1,1053c <memset+0x90>
   104c4:	ff067693          	andi	a3,a2,-16
   104c8:	00f67613          	andi	a2,a2,15
   104cc:	00e686b3          	add	a3,a3,a4
   104d0:	00b73023          	sd	a1,0(a4)
   104d4:	00b73423          	sd	a1,8(a4)
   104d8:	01070713          	addi	a4,a4,16
   104dc:	fed76ae3          	bltu	a4,a3,104d0 <memset+0x24>
   104e0:	00061463          	bnez	a2,104e8 <memset+0x3c>
   104e4:	00008067          	ret
   104e8:	40c306b3          	sub	a3,t1,a2
   104ec:	00269693          	slli	a3,a3,0x2
   104f0:	00000297          	auipc	t0,0x0
   104f4:	005686b3          	add	a3,a3,t0
   104f8:	00c68067          	jr	12(a3)
   104fc:	00b70723          	sb	a1,14(a4)
   10500:	00b706a3          	sb	a1,13(a4)
   10504:	00b70623          	sb	a1,12(a4)
   10508:	00b705a3          	sb	a1,11(a4)
   1050c:	00b70523          	sb	a1,10(a4)
   10510:	00b704a3          	sb	a1,9(a4)
   10514:	00b70423          	sb	a1,8(a4)
   10518:	00b703a3          	sb	a1,7(a4)
   1051c:	00b70323          	sb	a1,6(a4)
   10520:	00b702a3          	sb	a1,5(a4)
   10524:	00b70223          	sb	a1,4(a4)
   10528:	00b701a3          	sb	a1,3(a4)
   1052c:	00b70123          	sb	a1,2(a4)
   10530:	00b700a3          	sb	a1,1(a4)
   10534:	00b70023          	sb	a1,0(a4)
   10538:	00008067          	ret
   1053c:	0ff5f593          	zext.b	a1,a1
   10540:	00859693          	slli	a3,a1,0x8
   10544:	00d5e5b3          	or	a1,a1,a3
   10548:	01059693          	slli	a3,a1,0x10
   1054c:	00d5e5b3          	or	a1,a1,a3
   10550:	02059693          	slli	a3,a1,0x20
   10554:	00d5e5b3          	or	a1,a1,a3
   10558:	f6dff06f          	j	104c4 <memset+0x18>
   1055c:	00279693          	slli	a3,a5,0x2
   10560:	00000297          	auipc	t0,0x0
   10564:	005686b3          	add	a3,a3,t0
   10568:	00008293          	mv	t0,ra
   1056c:	f98680e7          	jalr	-104(a3)
   10570:	00028093          	mv	ra,t0
   10574:	ff078793          	addi	a5,a5,-16
   10578:	40f70733          	sub	a4,a4,a5
   1057c:	00f60633          	add	a2,a2,a5
   10580:	f6c374e3          	bgeu	t1,a2,104e8 <memset+0x3c>
   10584:	f3dff06f          	j	104c0 <memset+0x14>

0000000000010588 <__call_exitprocs>:
   10588:	fb010113          	addi	sp,sp,-80
   1058c:	03413023          	sd	s4,32(sp)
   10590:	f481ba03          	ld	s4,-184(gp) # 11f80 <_global_impure_ptr>
   10594:	03213823          	sd	s2,48(sp)
   10598:	04113423          	sd	ra,72(sp)
   1059c:	1f8a3903          	ld	s2,504(s4)
   105a0:	04813023          	sd	s0,64(sp)
   105a4:	02913c23          	sd	s1,56(sp)
   105a8:	03313423          	sd	s3,40(sp)
   105ac:	01513c23          	sd	s5,24(sp)
   105b0:	01613823          	sd	s6,16(sp)
   105b4:	01713423          	sd	s7,8(sp)
   105b8:	01813023          	sd	s8,0(sp)
   105bc:	04090063          	beqz	s2,105fc <__call_exitprocs+0x74>
   105c0:	00050b13          	mv	s6,a0
   105c4:	00058b93          	mv	s7,a1
   105c8:	00100a93          	li	s5,1
   105cc:	fff00993          	li	s3,-1
   105d0:	00892483          	lw	s1,8(s2)
   105d4:	fff4841b          	addiw	s0,s1,-1
   105d8:	02044263          	bltz	s0,105fc <__call_exitprocs+0x74>
   105dc:	00349493          	slli	s1,s1,0x3
   105e0:	009904b3          	add	s1,s2,s1
   105e4:	040b8463          	beqz	s7,1062c <__call_exitprocs+0xa4>
   105e8:	2084b783          	ld	a5,520(s1)
   105ec:	05778063          	beq	a5,s7,1062c <__call_exitprocs+0xa4>
   105f0:	fff4041b          	addiw	s0,s0,-1
   105f4:	ff848493          	addi	s1,s1,-8
   105f8:	ff3416e3          	bne	s0,s3,105e4 <__call_exitprocs+0x5c>
   105fc:	04813083          	ld	ra,72(sp)
   10600:	04013403          	ld	s0,64(sp)
   10604:	03813483          	ld	s1,56(sp)
   10608:	03013903          	ld	s2,48(sp)
   1060c:	02813983          	ld	s3,40(sp)
   10610:	02013a03          	ld	s4,32(sp)
   10614:	01813a83          	ld	s5,24(sp)
   10618:	01013b03          	ld	s6,16(sp)
   1061c:	00813b83          	ld	s7,8(sp)
   10620:	00013c03          	ld	s8,0(sp)
   10624:	05010113          	addi	sp,sp,80
   10628:	00008067          	ret
   1062c:	00892783          	lw	a5,8(s2)
   10630:	0084b703          	ld	a4,8(s1)
   10634:	fff7879b          	addiw	a5,a5,-1
   10638:	06878263          	beq	a5,s0,1069c <__call_exitprocs+0x114>
   1063c:	0004b423          	sd	zero,8(s1)
   10640:	fa0708e3          	beqz	a4,105f0 <__call_exitprocs+0x68>
   10644:	31092783          	lw	a5,784(s2)
   10648:	008a96bb          	sllw	a3,s5,s0
   1064c:	00892c03          	lw	s8,8(s2)
   10650:	00d7f7b3          	and	a5,a5,a3
   10654:	0007879b          	sext.w	a5,a5
   10658:	02079263          	bnez	a5,1067c <__call_exitprocs+0xf4>
   1065c:	000700e7          	jalr	a4
   10660:	00892703          	lw	a4,8(s2)
   10664:	1f8a3783          	ld	a5,504(s4)
   10668:	01871463          	bne	a4,s8,10670 <__call_exitprocs+0xe8>
   1066c:	f92782e3          	beq	a5,s2,105f0 <__call_exitprocs+0x68>
   10670:	f80786e3          	beqz	a5,105fc <__call_exitprocs+0x74>
   10674:	00078913          	mv	s2,a5
   10678:	f59ff06f          	j	105d0 <__call_exitprocs+0x48>
   1067c:	31492783          	lw	a5,788(s2)
   10680:	1084b583          	ld	a1,264(s1)
   10684:	00d7f7b3          	and	a5,a5,a3
   10688:	0007879b          	sext.w	a5,a5
   1068c:	00079c63          	bnez	a5,106a4 <__call_exitprocs+0x11c>
   10690:	000b0513          	mv	a0,s6
   10694:	000700e7          	jalr	a4
   10698:	fc9ff06f          	j	10660 <__call_exitprocs+0xd8>
   1069c:	00892423          	sw	s0,8(s2)
   106a0:	fa1ff06f          	j	10640 <__call_exitprocs+0xb8>
   106a4:	00058513          	mv	a0,a1
   106a8:	000700e7          	jalr	a4
   106ac:	fb5ff06f          	j	10660 <__call_exitprocs+0xd8>

00000000000106b0 <__libc_fini_array>:
   106b0:	fe010113          	addi	sp,sp,-32
   106b4:	00813823          	sd	s0,16(sp)
   106b8:	000127b7          	lui	a5,0x12
   106bc:	00012437          	lui	s0,0x12
   106c0:	83078793          	addi	a5,a5,-2000 # 11830 <__do_global_dtors_aux_fini_array_entry>
   106c4:	83840413          	addi	s0,s0,-1992 # 11838 <impure_data>
   106c8:	40f40433          	sub	s0,s0,a5
   106cc:	00913423          	sd	s1,8(sp)
   106d0:	00113c23          	sd	ra,24(sp)
   106d4:	40345493          	srai	s1,s0,0x3
   106d8:	02048063          	beqz	s1,106f8 <__libc_fini_array+0x48>
   106dc:	ff840413          	addi	s0,s0,-8
   106e0:	00f40433          	add	s0,s0,a5
   106e4:	00043783          	ld	a5,0(s0)
   106e8:	fff48493          	addi	s1,s1,-1
   106ec:	ff840413          	addi	s0,s0,-8
   106f0:	000780e7          	jalr	a5
   106f4:	fe0498e3          	bnez	s1,106e4 <__libc_fini_array+0x34>
   106f8:	01813083          	ld	ra,24(sp)
   106fc:	01013403          	ld	s0,16(sp)
   10700:	00813483          	ld	s1,8(sp)
   10704:	02010113          	addi	sp,sp,32
   10708:	00008067          	ret

000000000001070c <atexit>:
   1070c:	00050593          	mv	a1,a0
   10710:	00000693          	li	a3,0
   10714:	00000613          	li	a2,0
   10718:	00000513          	li	a0,0
   1071c:	0040006f          	j	10720 <__register_exitproc>

0000000000010720 <__register_exitproc>:
   10720:	f481b703          	ld	a4,-184(gp) # 11f80 <_global_impure_ptr>
   10724:	1f873783          	ld	a5,504(a4)
   10728:	06078063          	beqz	a5,10788 <__register_exitproc+0x68>
   1072c:	0087a703          	lw	a4,8(a5)
   10730:	01f00813          	li	a6,31
   10734:	08e84663          	blt	a6,a4,107c0 <__register_exitproc+0xa0>
   10738:	02050863          	beqz	a0,10768 <__register_exitproc+0x48>
   1073c:	00371813          	slli	a6,a4,0x3
   10740:	01078833          	add	a6,a5,a6
   10744:	10c83823          	sd	a2,272(a6)
   10748:	3107a883          	lw	a7,784(a5)
   1074c:	00100613          	li	a2,1
   10750:	00e6163b          	sllw	a2,a2,a4
   10754:	00c8e8b3          	or	a7,a7,a2
   10758:	3117a823          	sw	a7,784(a5)
   1075c:	20d83823          	sd	a3,528(a6)
   10760:	00200693          	li	a3,2
   10764:	02d50863          	beq	a0,a3,10794 <__register_exitproc+0x74>
   10768:	00270693          	addi	a3,a4,2
   1076c:	00369693          	slli	a3,a3,0x3
   10770:	0017071b          	addiw	a4,a4,1
   10774:	00e7a423          	sw	a4,8(a5)
   10778:	00d787b3          	add	a5,a5,a3
   1077c:	00b7b023          	sd	a1,0(a5)
   10780:	00000513          	li	a0,0
   10784:	00008067          	ret
   10788:	20070793          	addi	a5,a4,512
   1078c:	1ef73c23          	sd	a5,504(a4)
   10790:	f9dff06f          	j	1072c <__register_exitproc+0xc>
   10794:	3147a683          	lw	a3,788(a5)
   10798:	00000513          	li	a0,0
   1079c:	00c6e6b3          	or	a3,a3,a2
   107a0:	30d7aa23          	sw	a3,788(a5)
   107a4:	00270693          	addi	a3,a4,2
   107a8:	00369693          	slli	a3,a3,0x3
   107ac:	0017071b          	addiw	a4,a4,1
   107b0:	00e7a423          	sw	a4,8(a5)
   107b4:	00d787b3          	add	a5,a5,a3
   107b8:	00b7b023          	sd	a1,0(a5)
   107bc:	00008067          	ret
   107c0:	fff00513          	li	a0,-1
   107c4:	00008067          	ret

00000000000107c8 <_exit>:
   107c8:	05d00893          	li	a7,93
   107cc:	00000073          	ecall
   107d0:	00054463          	bltz	a0,107d8 <_exit+0x10>
   107d4:	0000006f          	j	107d4 <_exit+0xc>
   107d8:	ff010113          	addi	sp,sp,-16
   107dc:	00813023          	sd	s0,0(sp)
   107e0:	00050413          	mv	s0,a0
   107e4:	00113423          	sd	ra,8(sp)
   107e8:	4080043b          	negw	s0,s0
   107ec:	00c000ef          	jal	ra,107f8 <__errno>
   107f0:	00852023          	sw	s0,0(a0)
   107f4:	0000006f          	j	107f4 <_exit+0x2c>

00000000000107f8 <__errno>:
   107f8:	f581b503          	ld	a0,-168(gp) # 11f90 <_impure_ptr>
   107fc:	00008067          	ret

Disassembly of section .rodata:

0000000000010800 <.rodata>:
   10800:	20534143          	.4byte	0x20534143
   10804:	43435553          	.4byte	0x43435553
   10808:	5345                	.2byte	0x5345
   1080a:	00000a53          	.4byte	0xa53
   1080e:	0000                	.2byte	0x0
   10810:	20534143          	.4byte	0x20534143
   10814:	4146                	.2byte	0x4146
   10816:	4c49                	.2byte	0x4c49
   10818:	000a                	.2byte	0xa

Disassembly of section .eh_frame:

000000000001181c <__FRAME_END__>:
   1181c:	0000                	.2byte	0x0
	...

Disassembly of section .init_array:

0000000000011820 <__init_array_start>:
   11820:	0118                	.2byte	0x118
   11822:	0001                	.2byte	0x1
   11824:	0000                	.2byte	0x0
	...

0000000000011828 <__frame_dummy_init_array_entry>:
   11828:	01c0                	.2byte	0x1c0
   1182a:	0001                	.2byte	0x1
   1182c:	0000                	.2byte	0x0
	...

Disassembly of section .fini_array:

0000000000011830 <__do_global_dtors_aux_fini_array_entry>:
   11830:	017c                	.2byte	0x17c
   11832:	0001                	.2byte	0x1
   11834:	0000                	.2byte	0x0
	...

Disassembly of section .data:

0000000000011838 <impure_data>:
	...
   11840:	1d70                	.2byte	0x1d70
   11842:	0001                	.2byte	0x1
   11844:	0000                	.2byte	0x0
   11846:	0000                	.2byte	0x0
   11848:	1e20                	.2byte	0x1e20
   1184a:	0001                	.2byte	0x1
   1184c:	0000                	.2byte	0x0
   1184e:	0000                	.2byte	0x0
   11850:	1ed0                	.2byte	0x1ed0
   11852:	0001                	.2byte	0x1
	...
   11920:	0001                	.2byte	0x1
   11922:	0000                	.2byte	0x0
   11924:	0000                	.2byte	0x0
   11926:	0000                	.2byte	0x0
   11928:	330e                	.2byte	0x330e
   1192a:	abcd                	.2byte	0xabcd
   1192c:	1234                	.2byte	0x1234
   1192e:	e66d                	.2byte	0xe66d
   11930:	deec                	.2byte	0xdeec
   11932:	0005                	.2byte	0x5
   11934:	0000000b          	.4byte	0xb
	...

Disassembly of section .sdata:

0000000000011f80 <_global_impure_ptr>:
   11f80:	1838                	.2byte	0x1838
   11f82:	0001                	.2byte	0x1
   11f84:	0000                	.2byte	0x0
	...

0000000000011f88 <__dso_handle>:
	...

0000000000011f90 <_impure_ptr>:
   11f90:	1838                	.2byte	0x1838
   11f92:	0001                	.2byte	0x1
   11f94:	0000                	.2byte	0x0
	...

Disassembly of section .bss:

0000000000011f98 <completed.1>:
	...

0000000000011fa0 <object.0>:
	...

0000000000011fd0 <dst>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347          	.4byte	0x3a434347
   4:	2820                	.2byte	0x2820
   6:	31202967          	.4byte	0x31202967
   a:	2e32                	.2byte	0x2e32
   c:	2e31                	.2byte	0x2e31
   e:	0030                	.2byte	0x30
  10:	3a434347          	.4byte	0x3a434347
  14:	2820                	.2byte	0x2820
  16:	29554e47          	.4byte	0x29554e47
  1a:	3120                	.2byte	0x3120
  1c:	2e32                	.2byte	0x2e32
  1e:	2e31                	.2byte	0x2e31
  20:	0030                	.2byte	0x30

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	2041                	.2byte	0x2041
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <exit-0x100d4>
   c:	0016                	.2byte	0x16
   e:	0000                	.2byte	0x0
  10:	1004                	.2byte	0x1004
  12:	7205                	.2byte	0x7205
  14:	3676                	.2byte	0x3676
  16:	6934                	.2byte	0x6934
  18:	7032                	.2byte	0x7032
  1a:	5f30                	.2byte	0x5f30
  1c:	3261                	.2byte	0x3261
  1e:	3070                	.2byte	0x3070
	...
