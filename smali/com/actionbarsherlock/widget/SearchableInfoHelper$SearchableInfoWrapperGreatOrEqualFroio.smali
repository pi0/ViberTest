.class public Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapper;


# instance fields
.field private mSearchableInfo:Landroid/app/SearchableInfo;


# direct methods
.method public constructor <init>(Landroid/app/SearchableInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    .line 111
    return-void
.end method


# virtual methods
.method public getHintId()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    return v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    return v0
.end method

.method public getSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestAuthority()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestIntentData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestThreshold()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v0

    return v0
.end method

.method public getVoiceLanguageId()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v0

    return v0
.end method

.method public getVoiceLanguageModeId()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v0

    return v0
.end method

.method public getVoiceMaxResults()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v0

    return v0
.end method

.method public getVoicePromptTextId()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v0

    return v0
.end method

.method public getVoiceSearchEnabled()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    return v0
.end method

.method public getVoiceSearchLaunchRecognizer()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v0

    return v0
.end method

.method public getVoiceSearchLaunchWebSearch()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchableInfoHelper$SearchableInfoWrapperGreatOrEqualFroio;->mSearchableInfo:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v0

    return v0
.end method
