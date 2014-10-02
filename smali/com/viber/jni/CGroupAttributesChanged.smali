.class public Lcom/viber/jni/CGroupAttributesChanged;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private backgroundDownloadID:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private flags:I

.field private groupName:Ljava/lang/String;

.field private groupType:I

.field private groupUri:Ljava/lang/String;

.field private iconDownloadID:Ljava/lang/String;

.field private location:Lcom/viber/jni/LocationInfo;

.field private revision:I

.field private tagLine:Ljava/lang/String;

.field private tags:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x3

    const-string/jumbo v1, "CGroupAttributesChanged"

    const-string/jumbo v2, "init Bundle"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v0, "GroupName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->groupName:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "GroupUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->groupUri:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "IconDownloadID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->iconDownloadID:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "BackgroundDownloadID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->backgroundDownloadID:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "TagLine"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->tagLine:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "Tags"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->tags:[Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/viber/jni/LocationInfo;

    const-string/jumbo v1, "LocationLat"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "LocationLong"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/viber/jni/LocationInfo;-><init>(II)V

    iput-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->location:Lcom/viber/jni/LocationInfo;

    .line 51
    const-string/jumbo v0, "Country"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->country:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "GroupType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->groupType:I

    .line 53
    const-string/jumbo v0, "Revision"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->revision:I

    .line 54
    const-string/jumbo v0, "Flags"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->flags:I

    .line 55
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/viber/jni/CGroupAttributesChanged;->groupName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/viber/jni/CGroupAttributesChanged;->groupUri:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/viber/jni/CGroupAttributesChanged;->iconDownloadID:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/viber/jni/CGroupAttributesChanged;->backgroundDownloadID:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/viber/jni/CGroupAttributesChanged;->tagLine:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/viber/jni/CGroupAttributesChanged;->tags:[Ljava/lang/String;

    .line 35
    iput-object p7, p0, Lcom/viber/jni/CGroupAttributesChanged;->location:Lcom/viber/jni/LocationInfo;

    .line 36
    iput-object p8, p0, Lcom/viber/jni/CGroupAttributesChanged;->country:Ljava/lang/String;

    .line 37
    iput p9, p0, Lcom/viber/jni/CGroupAttributesChanged;->groupType:I

    .line 38
    iput p10, p0, Lcom/viber/jni/CGroupAttributesChanged;->revision:I

    .line 39
    iput p11, p0, Lcom/viber/jni/CGroupAttributesChanged;->flags:I

    .line 40
    return-void
.end method


# virtual methods
.method public getBackgroundDownloadID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->backgroundDownloadID:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->flags:I

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupType()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->groupType:I

    return v0
.end method

.method public getGroupUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->groupUri:Ljava/lang/String;

    return-object v0
.end method

.method public getIconDownloadID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->iconDownloadID:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lcom/viber/jni/LocationInfo;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->location:Lcom/viber/jni/LocationInfo;

    return-object v0
.end method

.method public getRevision()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->revision:I

    return v0
.end method

.method public getTagLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->tagLine:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/jni/CGroupAttributesChanged;->tags:[Ljava/lang/String;

    return-object v0
.end method

.method public setBackgroundDownloadID(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/viber/jni/CGroupAttributesChanged;->backgroundDownloadID:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/viber/jni/CGroupAttributesChanged;->country:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setFlags(I)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput p1, p0, Lcom/viber/jni/CGroupAttributesChanged;->flags:I

    .line 143
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/viber/jni/CGroupAttributesChanged;->groupName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setGroupType(I)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput p1, p0, Lcom/viber/jni/CGroupAttributesChanged;->groupType:I

    .line 127
    return-void
.end method

.method public setGroupUri(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/viber/jni/CGroupAttributesChanged;->groupUri:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setIconDownloadID(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/viber/jni/CGroupAttributesChanged;->iconDownloadID:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setLocation(Lcom/viber/jni/LocationInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/viber/jni/CGroupAttributesChanged;->location:Lcom/viber/jni/LocationInfo;

    .line 111
    return-void
.end method

.method public setRevision(I)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput p1, p0, Lcom/viber/jni/CGroupAttributesChanged;->revision:I

    .line 135
    return-void
.end method

.method public setTagLine(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/viber/jni/CGroupAttributesChanged;->tagLine:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setTags([Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/viber/jni/CGroupAttributesChanged;->tags:[Ljava/lang/String;

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CGroupAttributesChanged [groupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/CGroupAttributesChanged;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/CGroupAttributesChanged;->groupUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iconDownloadID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/CGroupAttributesChanged;->iconDownloadID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", backgroundDownloadID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/CGroupAttributesChanged;->backgroundDownloadID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tagLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/CGroupAttributesChanged;->tagLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/CGroupAttributesChanged;->tags:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/CGroupAttributesChanged;->location:Lcom/viber/jni/LocationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/jni/CGroupAttributesChanged;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", groupType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/CGroupAttributesChanged;->groupType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", revision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/CGroupAttributesChanged;->revision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/jni/CGroupAttributesChanged;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
