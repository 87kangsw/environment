# git hook

## pre-commit

<aside>
💡 프로젝트 폴더 내 `.git/hooks` 폴더에 `pre-commit` / `prepare-commit-msg` 이 없다면 생성합니다.
1) 만약 프로젝트 폴더 내에 `.git/hooks` 폴더가 없다면..
   - cd .git
   - mkdir hooks
   - touch hooks/pre-commit
   - open hooks/pre-commit
2) 만약 프로젝트 폴더 내에 `.git/hooks` 폴더가 있다면 
    - pre-commit.sample / prepare-commit-msg.sample 파일을 그대로 둔 채로 파일을 생성하거나 해당 파일 확장자를 수정하여 사용하는 방법으로 진행합니다.

</aside>

```bash
#!/bin/sh
LC_ALL=C

local_branch="$(git rev-parse --abbrev-ref HEAD)"

if [ $local_branch = "master" ] || [ $local_branch = "develop" ]; then
    echo "You can't commit directly to master / develop branch"
    exit 1 
fi
```

```bash
chmod u+x .git/hooks/pre-commit
```

---

## prepare-commit-msg

`number_regex` 에 브랜치명으로 사용할 prefix를 지정


```bash
#!/bin/sh
LC_ALL=C

commit_message=$1
local_branch="$(git rev-parse --abbrev-ref HEAD)"

branch_name=""

if [[ $local_branch == *"/"* ]];then
    branch_name=`echo ${local_branch} | cut -d '/' -f2`
fi

number_regex="^J2-[0-9]*$"

if [[ $branch_name =~ $number_regex ]]; then
    sed -i ".bak" "1s/^/[$branch_name] /" ${commit_message}
else
    sed -i ".bak" "1s/^//" ${commit_message}
fi
```

```bash
chmod u+x .git/hooks/prepare-commit-msg
```