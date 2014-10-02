.class public Lcom/viber/jni/GroupAddedMember;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private role:I

.field private user:Lcom/viber/jni/GroupUserInfo;


# direct methods
.method public constructor <init>(Lcom/viber/jni/GroupUserInfo;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GroupAddedMember ctor user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/GroupAddedMember;->role:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/jni/GroupAddedMember;->log(Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/viber/jni/GroupAddedMember;->user:Lcom/viber/jni/GroupUserInfo;

    .line 13
    iput p2, p0, Lcom/viber/jni/GroupAddedMember;->role:I

    .line 14
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    const/4 v0, 0x3

    const-string/jumbo v1, "GroupAddedMember"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getRole()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/viber/jni/GroupAddedMember;->role:I

    return v0
.end method

.method public getUser()Lcom/viber/jni/GroupUserInfo;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/viber/jni/GroupAddedMember;->user:Lcom/viber/jni/GroupUserInfo;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GroupAddedMember{user=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/GroupAddedMember;->user:Lcom/viber/jni/GroupUserInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", role=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/GroupAddedMember;->role:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
